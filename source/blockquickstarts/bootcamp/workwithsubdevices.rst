..  _workwithsubdevices:

Work with Subdevices
=========

Overview
---------

The goal of this quickstart is to show you how to understand the concept of, and work with instances of Subdevices. A Subdevice essentially equates to a string. We call the actuate method on a Device, with the subdevice as a parameter.

See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

Steps
---------

Recall that in :ref:`Sending Commands <sendcommands>` we called actuate on a device, with a string parameter? In the case of a device such as the Ninja Block’s RF433MHz system, that string parameter may refer to a subdevice.

We can retrieve a device by type, and a subdevice in this example:

Obtain a reference to our Device object, and a specific Subdevice.
~~~~

.. code-block:: javascript

	// We assume the subdevice has been attached using the Ninja Dashboard, 
	// and is named 'My Actuator On'.

	// Execute an RF command by name - eg "My Actuator Off";
	ninja.devices({ device_type: 'rf433' }, function(err, devices) {
		var actuators = ninja.utils.findSubDevice({ shortName: 'My Actuator On' }, devices);
		console.log("Actuators: " + actuators);
		_.each(actuators, function(actuator){
			ninja.device(actuator.guid).actuate(actuator.data);
		});
	});

We could just as easily obtain the device via its short name (shortName) as well. This would be handy if you have more than one device of a particular type.

Video
---------

.. raw:: html

	<iframe width="560" height="315" src="//www.youtube.com/embed/QEl3nUc1R_o" frameborder="0" allowfullscreen></iframe>

