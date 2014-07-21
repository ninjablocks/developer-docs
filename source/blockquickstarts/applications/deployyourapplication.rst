..	_deployyourapplication:

Deploy your Application
=========

Overview
---------

The goal of this quickstart is to show you how to deploy your application to `Heroku <www.heroku.com>`_. There are many other places on the Internet that provide hosting, if you require an alternative.

See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

TL;DR
---------

Here’s a very quick method for getting a generic Node.js app on Heroku. We assume you have an account there and are able to create new applications (i.e. you haven’t hit any limits.) This script is Express-specific. If you know what you’re doing you can easily switch it out for another engine. If you don’t know what you’re doing, Express is a fine place to start learning about templated web apps.

::

	#!/bin/sh
	echo "Creating $1"
	express --css stylus $1
	cd $1
	echo "#$1" > README.md
	npm install
	touch run_locally.sh
	chmod 777 run_locally.sh
	echo "web: node app.js" > Procfile
	git init
	git add .
	git commit -a -m "First commit"
	heroku create $1
	git push heroku master
	heroku ps:scale web=1
	heroku open
	echo "Done"

Deploy a Ninja Blocks App
---------

Deploying a Ninja Blocks App requires the following additions:

Include the ninja-blocks (and optionally underscore) npm modules in package.json
~~~~

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

Instantiate an instance of that module (as shown in Step 2 of Getting your Devices)
~~~~

.. code-block:: javascript

	// Include our underscore and ninja-blocks libraries
	var ninjaBlocks = require('ninja-blocks');

	// Instantiate a ninja object with your API token from https://a.ninja.is/hacking
	var ninja = ninjaBlocks.app({user_access_token:"USER_ACCESS_TOKEN"});

Commit your changes and push to Heroku
~~~~

::

	git commit -a -m "Add Ninja Awesomeness"
	git push heroku master

Open your app to check it’s running
~~~~

heroku open
You should see “Welcome to Express”.

*Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!*

