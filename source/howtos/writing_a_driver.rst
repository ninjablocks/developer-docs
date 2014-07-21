.. highlight:: javascript

Writing Sphere Drivers
=======================


Getting Started
---------
Sphere drivers are small pieces of code that allow the system to interact with devices. These devices could be actual pieces of physical hardware or even web services. For this tutorial, we will be creating a driver for the standard in of your terminal.

To begin, clone down https://github.com/ninjablocks/driver-keyboard to /opt/ninjablocks/drivers/ on your devkit (or Spheramid). ::

  cd /opt/ninjablocks/drivers
  git clone https://github.com/ninjablocks/driver-keyboard


Drivers
---------

All drivers are split into two parts: the *Driver* and the *Device*. The driver detects the hardware and creates an instance of the appropriate device. Since all devices depend on a driver, let's take a closer look at the driver class for our keyboard connector: *driver-keyboard/lib/Driver.js*. ::


    'use strict'

    var Keyboard = require('./Keyboard');

    function Driver() {
      this.name = 'com.ninjablocks.keyboard';
    }

    Ninja.driver(Driver); //registers this class as a driver in the systen


    Driver.prototype.start = function(config, cb) {
      var self = this;
      new Keyboard(self);

      cb(null);
    };

    Driver.prototype.stop = function(cb) {
      cb(null);
    };

    module.exports = Driver;


Since we aren't relying on any physical hardware for this driver, this code is quite short. This code is simply creating an instance of our *Keyboard* class and complying with the Driver interface with its *start*, *stop*, and constructor functions.

More complicated drivers use *start* to do hardware detection and ensure hardware is functioning properly before creating a device. The *stop* function is used to ensure hardware is shutdown gracefully.


Devices
---------

Now, let's take a close look at the actual device we're creating: the *Keyboard*. For those following at home, you can find this at *driver-keyboard/lib/Keyboard.js*.

The first thing you'll see is the constructor.: ::

    function Device(driver) {
      this.driver = driver;
      this.idType = 'keyboard';
      this.id = 'keyboard';
    }

    Ninja.device(Device);

The sole parameter for this constructor is *driver*. This is normally used as a reference to the low level hardware. *IdType* defines what kind of ID *id* is. For example, *idType* could be "MAC Address" and the *id* would be the MAC address itself. Since we're dealing with standard in, these designations are a bit ambiguous. Both *idType* and *id* are required properties for devices. The line just below the constructor announces this class as a device to the system.

Now we get to the real meat of the device, the *start* function: ::

  Device.prototype.start = function(config, cb) {
    var self = this;
    var log = this.log;

    self.announceChannel('keyboard');

  // make `process.stdin` begin emitting "keypress" events
    keypress(process.stdin);

  // listen for the "keypress" event
    process.stdin.on('keypress', function (ch, key) {
      log.debug("Received keypress", ch);
      if (key && key.ctrl && key.name == 'c') {
        process.exit(0);
      }

  //sends state based on the "keyboard protocol" defined at sphere-schema/protocol/keyboard.json
    self.sendState("keyboard", { "value" : key.name, "shift":key.shift, "ctrl":key.ctrl })

  });

    process.stdin.setRawMode(true);
    process.stdin.resume();

    cb();
  };


The first line of interest is ``self.announceChannel('keyboard');``. This announces to the sphere that this device supports the *keyboard* channel. These channels are defined in */opt/ninjablocks/sphere-schema/protocols/*. Channels will automatically handle any data validation required as data comes in and out of the device. The next line of interest is ``self.sendState("keyboard", { "value" : key.name, "shift":key.shift, "ctrl":key.ctrl })``. This actually publishes data to the sphere in the format defined in the *keyboard* protocol.


Testing
---------

Ensure the spheramid service is running: ``sudo start spheramid``

In one terminal window, run: ``mosquitto_sub -t \'$device/+/+/+/keyboard/event/state\' -v``. This will subscribe to all messages from all keyboards in the system.

In another terminal window, navigate to your driver and run it: ``cd /opt/ninjablocks/drivers/driver-keyboard && node run.js``. Once it fires up, type in a few characters. If its all working happily, you should see a message like this: ::

  $device/a2f748b74a/channel/cc57baaecc/keyboard/event/state {"params":[{"value":"e","shift":false,"ctrl":false},"keyboard"],"time":1404801129029,"jsonrpc":"2.0"}``.



Troubleshooting
---------
If it doesn't work, ensure your spheramid service is up and running by tailing the sphere logs: ``tail -f /var/log/ninjasphere.log``. This will give you an idea of the state of the system.

You can only start the driver once the spheramid service has finished its start up process. Restart the spheramid service: ``restart spheramid``, wait a  minute or so, and start the driver again ``node run.js``.
