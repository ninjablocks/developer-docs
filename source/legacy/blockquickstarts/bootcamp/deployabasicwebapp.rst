..  _deployabasicwebapp:

Deploy a Basic Web App
=========

*Note: This is a prerequisite to the next quickstart, in which you’ll need to subscribe to device feeds.*

Overview
---------

The goal of this quickstart is to show you how to create and deploy a bare-bones web app. We like Heroku, so this quickstart will Heroku-centric.

You need to know how to do this so that you can subscribe to device feeds, as well as implement RESTful routes of your own. (Useful for integrating with Webhooks.)

An obvious approach to providing you with such an app might be to provide you with a github repo. The problem with such an approach is that one spends a great deal of time with the mindless busywork of renaming parts of the app to the name you choose. Hence, the script below is designed to allow you to provide a name for your app, and it will generate all the moving parts for you.

Ironically, this script (like all code that one wishes to share, document and maintain) takes the form of a github repo.

Steps
---------

Step 1: Grab the app creation script from the github repo
~~~~

::

	git clone git://github.com/justy/node-express-heroku.git

or download it as a `ZIP archive <//github.com/justy/node-express-heroku/archive/master.zip>`_

Step 2: Follow the instructions provided
~~~~

Watch the how-to video `here <http://ninjablocks.com/blogs/how-to/7639075-deploy-a-node-app-to-heroku>`_

Step 3: Run the script and choose an app name
~~~~

Put the script in your PATH and execute it from a location in which you keep your code. (That is the location where you want to create the app.)

::

	create_magic my-heroku-app

Step 4: Add the ninja-blocks and underscore module specs to package.json in your new app
~~~~

Your package.json should look like this:

.. code-block:: javascript

	{
		"name": "application-name",
		"version": "0.0.1",
		"private": true,
		"scripts": {
			"start": "node app"
		},
		"dependencies": {
			"express": "3.1.0",
			"jade": "*",
			"stylus": "*",
			"ninja-blocks": "latest",
			"underscore": "~1.4.4"
		}
	}

Step 5: Add the code that instantiates the Ninja Blocks module
~~~~

This is exactly as was shown in :ref:`Get your Devices <getyourdevices>`.

.. code-block:: javascript

	// Include our ninja-blocks library
	var ninjaBlocks = require('ninja-blocks');

	// Instantiate a ninja object with your API token from https://a.ninja.is/hacking
	var ninja = ninjaBlocks.app({user_access_token:"USER_ACCESS_TOKEN"});

Step 6: Implement a POST route
~~~~

Add a new route after these lines:

.. code-block:: javascript

	app.get('/', routes.index);
	app.get('/users', user.list);

We can pick almost any name for our route, but we’ll choose rf for reasons that will become apparent in the next quickstart. Your routes section of your app should now look like this:

.. code-block:: javascript

	app.get('/', routes.index);
	app.get('/users', user.list);
	app.post('/rf' , function(req, res){
		// Indicate the route was hit
		console.log("/rf route POSTed to OK.");
		// Return success code
		res.send(200);
	});


Step 7: Commit your changes and push to Heroku
~~~~

Commit your changes with:

::

	git commit -a -m "Instantiate ninja-blocks module and implement POST route"

Push to Heroku:

::

	git push heroku master

Wait a few moments whilst your app is pushed and launched.

Step 8: Test your app’s new route
~~~~

cURL your app’s URL with a POST to your-app-name/rf

For help on using cURL on your platform, see :ref:`Prerequisites <prerequisites>`

Your should receive a 200 OK

Video
---------

.. raw:: html

	<iframe width="560" height="315" src="//www.youtube.com/embed/ahQMPLnOiv4" frameborder="0" allowfullscreen></iframe>
	