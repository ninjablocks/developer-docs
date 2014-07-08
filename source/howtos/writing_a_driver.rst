.. highlight:: javascript

Writing Sphere Drivers
=======================


Getting Started
---------
Sphere drivers are small pieces of code that allow the system to interact with devices. These devices could be actual pieces of physical hardware or even web services. For this tutorial, we will be creating a driver for the standard in of your terminal.

To begin, clone down https://github.com/ninjablocks/driver-keyboard to /opt/ninjablocks/drivers/ on your devkit (or Spheramid). ::

  cd /opt/ninjablocks/drivers
  git clone https://github.com/ninjablocks/driver-keyboard

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

Now, let's take a close look at the actual device we're creating: the *Keyboard*. For those following at home, you can find this at *driver-keyboard/lib/Keyboard.js*.

The first thing you'll see is the constructor.: ::

    function Device(driver) {
      this.driver = driver;
      this.idType = 'keyboard';
      this.id = 'keyboard';
    }

The parameter for this constructor is *driver*. This is normally used as a reference to the low level hardware. *IdType* is the type of ID that *id* refers to. For example, "idType" could be *MAC Address* and the *id* would be the MAC address itself. Since we're dealing with standard in, these designations are a bit ambiguous. Both *idType* and *id* are required properties.
