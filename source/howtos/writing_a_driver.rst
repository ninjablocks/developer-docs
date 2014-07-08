.. highlight:: javascript

Writing Sphere Drivers
=======================


Getting Started
---------
Sphere drivers are small pieces of code that allow the system to interact with devices. These devices could be actual pieces of physical hardware or even web services. For this tutorial, we will be creating a driver for the standard in of your terminal.

To begin, navigate to /opt/ninjablocks/drivers on your devkit (or spheramid). Create a folder called driver-keyboard. Inside this folder, create the following files and  paste in the respective contents.

/opt/ninjablocks/drivers/driver-keyboard/run.js
~~~~

::

#!/usr/bin/env node

process.title = __dirname.substring(__dirname.lastIndexOf('/')+1);
console.log('### Starting', process.title);

var p = require('path').resolve(__dirname, '../../sphere-common');
if (require('fs').existsSync(p)) {
  require(p);
} else {
  require('ninja-sphere');
}

module.exports = new (require('./index'))();
