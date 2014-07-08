.. highlight:: javascript

Writing Sphere Drivers
=======================


Getting Started
---------
Sphere drivers are small pieces of code that allow the system to interact with devices. These devices could be actual pieces of physical hardware or even web services. For this tutorial, we will be creating a driver for the standard in of your terminal.

To begin, clone down https://github.com/ninjablocks/driver-keyboard to /opt/ninjablocks/drivers/ on your devkit (or Spheramid).

::

cd /opt/ninjablocks/drivers
git clone https://github.com/ninjablocks/driver-keyboard

All drivers are split into two parts: the *Driver* and the *Device*. The driver detects the hardware and creates an instance of the appropriate device. Since all devices depend on a driver, let's take a closer look at the driver class for our keyboard connector: driver-keyboard/lib/Driver.js. ::


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
