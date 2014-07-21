..	_detectinactivity:

Detect Inactivity
=========

Overview
---------

The goal of this quickstart is to demonstrate a simple method of determining when a period of sensor activity has occurred. At this point you should be well skilled in Ninja Block app creation. In this quickstart, we will monitor the activity of a Passive Infrared Sensor. When a certain period of inactivity is reached, we can act on this event in any manner we deem appropriate.

See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

We’ll do this in two parts. Firstly, we’ll keep a count of the number of seconds that have elapsed since the last time the PIR sensor was triggered. This will be our measure of inactivity. When it reaches a certain quantity, we know that there has been no activity in the room for that period of time.

Secondly, we subscribe to the Passive Infared Sensor’s data value. When we get a callback from the sensor we’ll reset our inactivity count.

Step 1: Create a generic Ninja Blocks App
~~~~

Create an app as outlined in :ref:`Deploy a Basic Web App <deployabasicwebapp>` as a starting point.

Step 2: Establish Content Settings
~~~~

.. code-block:: javascript

	var my_device = "1012BB013195_0_0_11";	// Use the guid of your RF433 system
	var PIR_ID = "010101010101010101010101";	// Use the code for your PIR sensor

	SOME_THRESHOLD = 5; // Number of seconds to consider an inactive period.

Step 3: Subscribe to the PIR sensor’s data feed.
~~~~

(See :ref:`Subscribe to Device Feeds <subscribetodevicefeeds>` for more detail if you need it.)

.. code-block:: javascript

	// For example http://mycoolapp.herokuapp.com
	var HOSTNAME = "http://where.your.app.is.hosted";	
	ninja.device(my_device).subscribe(HOSTNAME+'/rf',true,function(err){}); 

Step 4: Implement a route to catch RF activity
~~~~

Implement the required route as shown in the Subscribe to Device Feeds quickstart.

.. code-block:: javascript

	app.post('/rf' , function(req, res){
		// This route will be hit when *any* RF433MHz signal is received
		if (req.body.DA == PIR_ID) {
			// If it's the PIR device, reset the inactivity count.
			seconds_of_inactivity = 0;
		}
		res.send(200);
	});

Step 5: Use a variable to track the number of seconds of inactivity
~~~~

.. code-block:: javascript

	var seconds_of_inactivity = 0;

	var second_timer = setInterval(countInactivity, 1000);

	function countInactivity() {
	//console.log("seconds_of_inactivity: " + seconds_of_inactivity);
		//console.log("SOME_THRESHOLD: " + SOME_THRESHOLD);
		seconds_of_inactivity++;
		if (seconds_of_inactivity > SOME_THRESHOLD) {
			// Trigger the inactivity event
			console.log("Inactivity Event");
			// Optionally, reset the inactivity counter
			// seconds_of_inactivity = 0;
			// If you wanted to expand this you could omit the step above and generate a 'still inactive' event
		}
	}

Step 6: Test your code!
~~~~

::

	node app.js

*Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!*