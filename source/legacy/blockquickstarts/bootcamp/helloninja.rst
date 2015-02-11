..	_helloninja:

Hello Ninja
=========

Overview
---------

The goal of this quickstart is to incorporate the preceding quickstarts into a working app that will prepare you for entry into the next realm. See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

Steps
---------

Recall that in the preceding quickstarts you learned how to get at your Ninja Block’s devices, read its sensor data, send it commands, subscribe to its device feeds, and work with its subdevices.

We’ll leverage that knowledge right here, and build a simple app that:

	1. Finds your Ninja Block
	2. Subscribes to its RF 433MHz Device
	3. Implements a POST route to handle that subscription
	4. Checks for the receipt of a wireless button’s code (subdevice)
	5. Reads the Block’s temperature sensor
	6. Sends RF actuation commands to a socket actuator subdevice

The app will have three modes that map to the state of your actuator:

	1. Off
	2. On
	3. Auto

Pressing the wireless button will cycle through these modes. The ‘On’ and ‘Off’ modes map directly to the socket’s state, and the ‘auto’ mode allows your Ninja Block to switch the actuator on or off on the basis of a temperature that you define in the app. Nina’s eyes will reflect which mode the app is in:

	* Black : Off
	* Green : On
	* White : Auto

This will not be a step by step quickstart- simply grab the repo from `github <https://github.com/ninjablocks/quickstarts-helloninja>`_ using either:

::

	git clone https://github.com/ninjablocks/quickstarts-helloninja

or download it as a `ZIP archive <https://github.com/ninjablocks/quickstarts-helloninja/archive/master.zip>`_

Run the app, ensuring you have named your sensors and actuators as described in the code.

Press your wireless button, and Nina’s eyes should turn green, and your socket actuator should turn on. Press it again and Nina’s eyes should turn white, and your socket actuator should either stay on or turn off, depending on the temperature sensor’s value. Press it again and Nina’s eyes should turn black, and your socket actuator should turn off.

Do a heroku logs -t and you should see the results of that button pressing in the form of HTTP POST requests to the app.

Congratulations! You are ready to leave Bootcamp and enter the Realm of Applications!

Here’s the app.js file, for your convenient perusal:

.. code-block:: javascript

	/*
	 * Copyright (C) 2013 Justin James Clayden for Ninja Blocks - http://www.ninjablocks.com
	 *
	 * This program is free software; you can redistribute it and/or modify
	 * it under the terms of the GNU General Public License version 2 as
	 * published by the Free Software Foundation.
	 */

	// quickstarts-helloninja

	// Code to accompany http://docs.ninja.is/quickstarts/bootcamp/helloninja.html

	// Generic web server stuff see: 
	// http://ninjablocks.com/blogs/how-to/7639075-deploy-a-node-app-to-heroku
	// for more information on how to create this.

	// ------ START OF GENERIC WEB APP STUFF ----------

	var express = require('express')
	, routes = require('./routes')
	, user = require('./routes/user')
	, http = require('http')
	, path = require('path');

	var app = express();

	app.configure(function(){
		app.set('port', process.env.PORT || 3000);
		app.set('views', __dirname + '/views');
		app.set('view engine', 'jade');
		app.use(express.favicon());
		app.use(express.logger('dev'));
		app.use(express.bodyParser());
		app.use(express.methodOverride());
		app.use(app.router);
		app.use(require('stylus').middleware(__dirname + '/public'));
		app.use(express.static(path.join(__dirname, 'public')));
	});

	app.configure('development', function(){
		app.use(express.errorHandler());
	});

	app.get('/', routes.index);
	app.get('/users', user.list);

	http.createServer(app).listen(app.get('port'), function(){
		console.log("Express server listening on port " + app.get('port'));
	});


	// ------ END OF GENERIC WEB APP STUFF ----------

	// Name your sensors and actuators on the Dashboard 
	// and set the variables here appropriately

	var rf433_short_name = "RF 433Mhz";
	var temperature_short_name = "Temperature"; //My Temperature and Humidity Sensor";
	var button_short_name = "Button";
	var actuator_on_short_name = "My Actuator On";
	var actuator_off_short_name = "My Actuator Off";
	var ninas_eyes_short_name = "Nina\'s Eyes";

	// The host where we'll deploy our apps- replace this with yours
	// If you use Heroku, don't forget to heroku ps:scale web=1 or else you'll receive an error on visiting the app.	
	// (Not that the front-end of the app is important in this case, but if you see an error you'll know why)
	var HOSTNAME = "https://quickstarts-helloninja.herokuapp.com/";

	// Transitional temperatures.	We use two to avoid hysteresis
	var transitional_temperature_on = 23.0;
	var transitional_temperature_off = 21.0;
	var current_temperature = 0;

	// Maintain a variable that represents the state of our room
	var app_mode = 'off';
	var socket_mode = 'off'; // Cache the socket's state so we don't flood the airwaves

	// Include our underscore and ninja-blocks libraries
	var ninjaBlocks = require('ninja-blocks');

	// Instantiate a ninja object with your API token from https://a.ninja.is/hacking
	var ninja = ninjaBlocks.app({user_access_token:"muOnSd6ofxcZ7CoC7jZmyVgM7mlTm4QutF7YTvrw"}); // This one is long revoked.

	// Import Underscore
	var _ = require('underscore');

	// Pull out our desired devices by their short name.

	// Nina's Eyes Device
	var eyes_device_key;

	// Temperature Sensor Device
	var temperature_device_key;

	// RF Device
	var rf_device_key;

	// List of RF subdevices
	var rf_subdevice_list = {};

	ninja.devices(function(err, devices) {

		// Create a convenience device and subdevice map keyed on shortname
		_.each(devices, function(device, key){

			// You might find this line handy at first
			//console.log("Device's short name: ", device.shortName);

			// Nina's Eyes
			if (device.shortName == ninas_eyes_short_name) {
				console.log("Found Nina\'s Eyes: ", key);
				eyes_device_key = key;
			}

			// Temperature sensor
			if (device.shortName == temperature_short_name) {
				console.log("Found Temperature Sensor: ", key);
				temperature_device_key = key;
			}

			// RF Goodness
			if (device.shortName == rf433_short_name) {

				// RF433 device
				console.log("Found your RF433: ", key);
				rf_device_key = key;

				// Found our RF433 device, subscribe to it and get its subdevices
				//console.log("Subscribing to " + HOSTNAME + '/rf');
				ninja.device(rf_device_key).subscribe(HOSTNAME+'/rf',true,function(err){
						// Handle errors
						if (err) {
							console.log("Error subscribing: ", err);
						}
					});

				_.each(device.subDevices,function(subdevice){

					// Add the subdevice as a value for a key in a hash.
					rf_subdevice_list[subdevice.shortName] = subdevice.data;

				}); // Each subdevice	

				// Uncomment this if you find it useful
				//console.log("Subdevices: ", rf_subdevice_list);
			} // is rf433 
		}); // each device

	}); // ninja.devices

	// Now this is done we can access our devices like so:

	// Set Nina's eyes to red:
	// ninja.device(eyes_device_gid).actuate('FF0000');

	// Turn the actuator on:
	// ninja.device(rf_device_gid).actuate(rf_subdevice_list[actuator_on_short_name]);

	// Run our app on a simple 1 second idle loop
	setInterval(idleApp, 1000);

	function idleApp() {
		// Run our app's logic

		switch (app_mode) {

			case 'off':
			// Nothing to do; actuator stays on and our route handles the button press
			break;

			case 'on':
			// Nothing to do; actuator stays on and our route handles the button press
			break;

			case 'auto':
			ninja.device(temperature_device_key).last_heartbeat(function(err, data) {
					current_temperature = data.DA;
			});

			console.log("Temperature is: ", current_temperature);

			if (current_temperature > transitional_temperature_on) {
				// Switch our actuator on
				if (socket_mode == 'off') {
					ninja.device(rf_device_key).actuate(rf_subdevice_list[actuator_on_short_name]);
					socket_mode = 'on';
				}
			}

			if (current_temperature < transitional_temperature_off) {
				if (socket_mode == 'on') {
				// Switch our actuator off
				 ninja.device(rf_device_key).actuate(rf_subdevice_list[actuator_off_short_name]);
				 socket_mode = 'off';
				}
			}

			break;
		} // switch

	} // idleApp


	// Implement our rf route
	app.post('/rf' , function(req, res){
	//console.log('posted: ', req.body.DA);
	//console.log('button_short_name: ' + button_short_name);
	//console.log('rf_subdevice_list[button_short_name]): ' + rf_subdevice_list[button_short_name]);

		// Accept the RF input, filtering out the button we are after
	if (req.body.DA == rf_subdevice_list[button_short_name]) {
		console.log("Button was pressed");

			//console.log("rf device key is: ", rf_device_key);

			// Change mode

			switch (app_mode) {

				case 'off':
					console.log("Was off, turning on");
					// Switch to mode 'on', turning on the socket
					app_mode = 'on';
					ninja.device(rf_device_key).actuate(rf_subdevice_list[actuator_on_short_name]);
					socket_mode ='on';
					// Update Nina's eyes
					updateEyes(app_mode);
				break;

				case 'on':
					console.log("Was on, going auto");
					// Switch to mode 'auto'.	No need to actuate anything here.
					app_mode = 'auto';
					// Update Nina's eyes
					updateEyes(app_mode);
				break;

				case 'auto':
					console.log("Was auto, turning off");
					// Switch to mode 'off', turning off the socket
					app_mode = 'off';
					ninja.device(rf_device_key).actuate(rf_subdevice_list[actuator_off_short_name]);
					socket_mode = 'off';
					// Update Nina's eyes
					updateEyes(app_mode);
				break;
			} // switch

		} // if

	res.send(200);
	});

	// Update Nina's Eyes
	function updateEyes(mode) {

		switch (mode) {

			case 'off':
				ninja.device(eyes_device_key).actuate('000000');
			break;

			case 'on':
				ninja.device(eyes_device_key).actuate('00FF00');
			break;

			case 'auto':
				ninja.device(eyes_device_key).actuate('FFFFFF');
			break;

		}

	}

Video
---------

.. raw:: html

	<iframe width="560" height="315" src="//www.youtube.com/embed/undefined" frameborder="0" allowfullscreen></iframe>