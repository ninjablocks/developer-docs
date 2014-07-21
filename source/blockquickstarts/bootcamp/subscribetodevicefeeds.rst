..  _subscribetodevicefeeds:

Subscribe to Device Feeds
=========

Overview
---------

The goal of this quickstart is to show you how to subscribe to a device feed. This approach is preferred to continually polling a device’s data value. Please ensure you’ve covered the steps in :ref:`Deploy a Basic Web App <deployabasicwebapp>`.

See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts. Install the `Node NinjaBlocks Library <http://github.com/ninjablocks/node-ninja-blocks>`_ using npm.

Steps
---------

There are a total of 5 steps in this quickstart.

Step 1: Create / Use a Node App
~~~~

(See :ref:`Deploy a Basic Web App <deployabasicwebapp>` for this step.)

Step 2: Obtain your Device’s guid
~~~~

(Use one of the methods outlined in :ref:`Work with Sensor Readings <workwithsensorreadings>` for this step.)

We assume our device’s guid has been obtained as above, and is assigned to the variable my_device. In this case the device is the Ninja Block’s RF433MHz system.

Step 3: Subscribe to the Device’s feed
~~~~

.. code-block:: javascript

	var my_device = "guid of your RF433MHz Device";
	var my_subdevice = "your subdevice"; // This will be a 24bit string in most cases
	var HOSTNAME = "http://where.your.app.is.hosted";	// For example http://mycoolapp.herokuapp.com
	ninja.device(my_device).subscribe(HOSTNAME+'/rf',true,function(err){}); 

	// Note that route 'rf' is arbitrary but informative.

Step 4: Implement the Required Route:
~~~~

This step augments Step 5 your followed in :ref:`Deploy a Basic Web App <deployabasicwebapp>`.

.. code-block:: javascript

	app.post('/rf' , function(req, res){
		console.log("Subdevice: " + my_subdevice);
		console.log("req.body.DA: " + req.body.DA);
		// This route will be hit when *any* RF433MHz signal is received.
		handleSubscription(req.body.DA);
		res.send(200);
	});

Step 5: Do something with your Device’s data
~~~~

.. code-block:: javascript

	// Implement a function to handle the receipt of the data
	function handleSubscription(guid) {
		if (guid == my_subdevice) {
			console.log("The button was pressed");
		}
	}

Video
---------

.. raw:: html

	<iframe width="560" height="315" src="//www.youtube.com/embed/GQY0mXDI8Ho" frameborder="0" allowfullscreen></iframe>
