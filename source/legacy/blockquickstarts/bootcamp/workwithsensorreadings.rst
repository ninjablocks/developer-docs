..  _workwithsensorreadings:

Work with Sensor Readings
=========

Overview
---------

The goal of this quickstart is to show you how to read your block’s devices sensors. See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

Steps
---------

Follow the :ref:`get your devices <getyourdevices>` quickstart if you haven’t already. This will show you how to instantiate a ninjablocks instance and identify a device that you wish to work with.

We assume our device’s guid has been obtained as above, and is assigned to the variable my_device. In this case the device is a temperature sensor.

.. code-block:: javascript

	// Include our underscore and ninja-blocks libraries
	var _ = require('underscore');

	var ninjaBlocks = require('ninja-blocks');

	// Instantiate a ninja object with your API token from https://a.ninja.is/hacking
	var ninja = ninjaBlocks.app({user_access_token:"YOUR_API_TOKEN"});

	// Get the most recent temperature reading from all temperature sensors
	ninja.devices({ device_type: 'temperature' }, function(err, devices) {
		_.each(devices, function(device,guid){
			ninja.device(guid).last_heartbeat(function(err, data) { 
				console.log(device.shortName+' is '+data.DA+'C');
			})
		})
	});

Video
---------
.. raw:: html

	<iframe width="640" height="360" src="//www.youtube.com/embed/Kgicu-2qxR8" frameborder="0" allowfullscreen></iframe>