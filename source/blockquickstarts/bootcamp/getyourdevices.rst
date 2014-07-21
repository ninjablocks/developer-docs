..  _getyourdevices:

Get Your Devices
=========

Overview
---------

The goal of this quickstart is to show you how to obtain a representation (JSON of course) of all of the devices that are attached to your block. See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

Steps
---------
There are a total of 5 steps in this quickstart.

Step 1: Create a new file
~~~~

You won’t need to deploy this app anywhere. You can just run it on your development machine. (On or your Ninja Block!)
::

	touch app.js

Step 2: Edit app.js and paste in this code:
~~~~
.. code-block:: javascript

	// Include our ninja-blocks library
	var ninjaBlocks = require('ninja-blocks');

	// Instantiate a ninja object with your API token from https://a.ninja.is/hacking
	var ninja = ninjaBlocks.app({user_access_token:"USER_ACCESS_TOKEN"});

Use the access token you find in Settings:API in place of the placeholder.

Step 3: Add this code fragment:
~~~~
.. code-block:: javascript

	ninja.devices(function(err, devices) {
		console.log(devices);
	});

Step 4: Run the App:
~~~~
::

	node app.js

Step 5: Examine the output:
~~~~

Perusing this JSON is a useful exercise in and of itself to help you familiarise yourself with how devices are represented.

.. code-block:: javascript

	{ '1012BB013151_0_0_1004':
		{ vid: '0',
			did: '1004',
			device_type: 'webcam',
			default_name: 'Web Cam',
			tags: 'usb camera webcam',
			is_sensor: 0,
			is_actuator: 1,
			is_silent: 0,
			has_time_series: 0,
			has_subdevice_count: 0,
			node: '1012BB013151',
			gid: '0',
			shortName: 'Office Cam',
			meta: {},
			subDevices: {},
			last_data: { DA: '1', timestamp: 1366241113056 } },
	'1012BB013151_0_0_11':
		{ vid: '0',
			did: '11',
			device_type: 'rf433',
			default_name: 'RF 433Mhz',
			tags: 'serial rf rf433 receiver transmitter',
			is_sensor: 1,
			is_actuator: 1,
			is_silent: 0,
			has_time_series: 0,
			has_subdevice_count: 1,
			subDevices:
			 { '9irHj': [Object],
				dkt0k: [Object],
				ktPyC: [Object],
				rHiU7: [Object],
				NwDWK: [Object],
				n7qJO: [Object] },
			shortName: 'Office Ninja',
			gid: '0',
			node: '1012BB013151',
			meta: {},
			last_data: { DA: '010101011101010101010101', timestamp: 1366241108745 } },
	'1012BB013151_0301_0_31':
		{ vid: '0',
			did: '31',
			device_type: 'temperature',
			default_name: 'Temperature',
			tags: 'rf digital temperature',
			is_sensor: 1,
			is_actuator: 0,
			is_silent: 0,
			has_time_series: 1,
			has_subdevice_count: 0,
			unit: 'celsius',
			documentation: 'http://docs.ninja.is/protocol/temperature',
			node: '1012BB013151',
			gid: '0301',
			meta: {},
			shortName: 'Office Temp',
			subDevices: {},
			last_data: { DA: 21, timestamp: 1366241095429 } },
	'1012BB013151_0301_0_30':
		{ vid: '0',
			did: '30',
			device_type: 'humidity',
			default_name: 'Humidity',
			tags: 'rf digital humidity',
			is_sensor: 1,
			is_actuator: 0,
			is_silent: 0,
			has_time_series: 1,
			has_subdevice_count: 0,
			node: '1012BB013151',
			gid: '0301',
			meta: {},
			subDevices: {},
			last_data: { DA: 78, timestamp: 1366241095378 },
			shortName: 'Humidity' },
	'2712BB000621_0_0_999':
		{ vid: '0',
			did: '999',
			device_type: 'rgbled8',
			default_name: 'Status Light',
			tags: 'cape rgbled8 rgbled led',
			is_sensor: 1,
			is_actuator: 1,
			is_silent: 0,
			has_time_series: 0,
			has_subdevice_count: 0,
			node: '2712BB000621',
			gid: '0',
			meta: {},
			subDevices: {},
			last_data: { DA: '00FF00', timestamp: 1366241089551 },
			shortName: 'Status Light' },
	'2712BB000621_0_0_1007':
		{ vid: '0',
			did: '1007',
			device_type: 'rgbled',
			default_name: 'Nina\'s Eyes',
			tags: 'cape rgbled led',
			is_sensor: 1,
			is_actuator: 1,
			is_silent: 0,
			has_time_series: 0,
			has_subdevice_count: 0,
			gid: '0',
			node: '2712BB000621',
			meta: {},
			subDevices: {},
			last_data: { DA: '000000', timestamp: 1366241089503 },
			shortName: 'Nina\'s Eyes' },
	WEBHOOK_0_0_108:
		{ vid: '0',
			did: '108',
			device_type: 'webhook',
			default_name: 'Webhook',
			tags: 'webservice virtual webhook',
			is_sensor: 1,
			is_actuator: 1,
			is_silent: 1,
			has_time_series: 0,
			has_subdevice_count: 1,
			gid: '0',
			node: 'WEBHOOK',
			meta: {},
			subDevices: { DevCJ: [Object] },
			last_data: { DA: 'DevCJ', timestamp: 1366179327140 },
			shortName: 'Webhook' },
	'2712BB000621_2_0_0':
		{ vid: '0',
			gid: '2',
			did: '0',
			node: '2712BB000621',
			meta: {},
			subDevices: {},
			last_data: { DA: 1023, timestamp: 1366045805933 } },
	'1012BB013151_3_0_6':
		{ vid: '0',
			did: '6',
			device_type: 'light_level',
			default_name: 'Light Sensor',
			tags: 'serial analog light',
			is_sensor: 1,
			is_actuator: 0,
			is_silent: 0,
			has_time_series: 1,
			has_subdevice_count: 0,
			gid: '3',
			node: '1012BB013151',
			meta: {},
			subDevices: {},
			last_data: { DA: 0, timestamp: 1365722146632 },
			shortName: 'Light Sensor' },
	'1012BB013151_2_0_1002':
		{ vid: '0',
			did: '1002',
			device_type: 'relay',
			default_name: 'Relay Board',
			tags: 'breakout relay',
			is_sensor: 1,
			is_actuator: 1,
			is_silent: 0,
			has_time_series: 1,
			has_subdevice_count: 0,
			gid: '2',
			node: '1012BB013151',
			meta: {},
			subDevices: {},
			last_data: { DA: 0, timestamp: 1364902495360 },
			shortName: 'Relay Board' },
	'2712BB000621_0_0_1005':
		{ vid: '0',
			did: '1005',
			device_type: 'network',
			default_name: 'Network',
			tags: 'network system',
			is_sensor: 1,
			is_actuator: 1,
			is_silent: 1,
			has_time_series: 0,
			has_subdevice_count: 0,
			node: '2712BB000621',
			gid: '0',
			meta: {},
			subDevices: {},
			last_data: { DA: '{}', timestamp: 1364440199424 },
			shortName: 'Network' } }
	 
Video
---------

.. raw:: html

	<iframe width="640" height="360" src="//www.youtube.com/embed/6qCxtoCOJZw" frameborder="0" allowfullscreen></iframe>
