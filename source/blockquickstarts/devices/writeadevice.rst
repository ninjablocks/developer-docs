..  _writeadevice:

Write a Device
=========

Overview
---------

Recall that in :ref:`Write Drivers <writedrivers>` you learned how to create new Drivers. In that quickstart, an index.js file was created, along with a lib/device.js file and it is within this file that we see an implementation of the Device itself. Please ensure you have completed that quickstart before starting this one. It assumes you have created a blank Driver named my-first-driver.

There are a number of contexts within which we may implement a Device:

	1. On a development machine- i.e. a ‘full’ computer; most likely the computer you used to create a Driver in :ref:`Write Drivers <writedrivers>`
	2. On a Ninja Block (BeagleBone)- you can do this by ssh-ing into the Block and creating Drivers within the /opt/ninja directory.
	3. On a Raspberry Pi running the Ninja Blocks image, you can do this by ssh-ing into the RPi and creating Drivers within the /opt/ninja directory.

In any of these contexts, the general approach is the same. We implement functions within lib/device.js and have it perform whatever tasks are required to interface with the hardware/local services we are interested in. Note also that there’s nothing stopping us from working with HTTP verbs directly, analogous to what we did in :ref:`Create REST Devices <createrestdevices>`. In this quickstart we’ll focus on supporting hardware.

Without getting too recursive, even ‘hardware’ may be seen in at least two contexts:

	1. Hardware that is present on the machine on which you are developing the Device.
	2. Hardware that is present on a system that is connected to the development machine- either directly (As in the case of the Ninja Block; connected to its Arduino cape) or indirectly (As in the case of a machine that is connected to hardware via USB, Ethernet, Wifi, etc.)

In any event, it is our task to implement functionality that supports input (as in the case of a sensor device) and/or output (as in the case of an actuator).

Step One: Set the Driver’s Sensor/Actuator status
~~~~

You’ll see a function named Device within lib/device.js and two lines like so:

.. code-block:: javascript
	
	// This device will emit data
	this.readable = true;
	// This device can be actuated
	this.writeable = true;

Change this section to reflect the details of your Driver. For example, perhaps your Driver is only a Sensor, and therefore will not be used as an Actuator

In that case, you would change that line like so:

.. code-block:: javascript

	// This device cannot be actuated
	this.writeable = false;

Step Two: Identifiy the Driver via Channel, Vendor and Device ID
~~~~

.. code-block:: javascript

	this.G = "0"; // G is a string a represents the channel
	this.V = 0; // 0 is Ninja Blocks' device list
	this.D = 2000; // 2000 is a generic Ninja Blocks sandbox device

Step Three: Implement Sensor Functionality
~~~~

Let’s consider the example of a CPU meter device. The CPU is directly connected hardware.

Following the lines that identify the Device, within the Device function we would implement this code:

.. code-block:: javascript

	process.nextTick(function() {
		setInterval(function() {

			child = exec('top -b -n1| grep Cpu | awk \'{print $2}\'',
			function (error, stdout, stderr) {
				stdout.replace(/(\n|\r|\r\n)$/, '');
				console.log("CPU is now at " + stdout);
				self.emit('data',stdout);
			});

		}, 1000);
	});

Notice the self.emit('data',stdout) line- that’s where the (in this case) sensor data for this Device is generated.

Step Four: Implement Actuator Functionality
~~~~

.. code-block:: javascript

	Device.prototype.write = function(data) {
		// I'm being actuated with data!
		console.log(data);
	};

Within this function we can actuate our device on the basis of what is passed to this function via the data parameter.

*Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!*