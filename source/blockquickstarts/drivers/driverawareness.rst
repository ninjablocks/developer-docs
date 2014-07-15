..  _driverawareness:

Driver Awareness
=========

Prepare for Driver development in this preparatory quickstart. You’ll install the Ninja Blocks Client on your development machine, as well as the Ninja Toolbelt.

Step One: Clone the Ninja Blocks Client
~~~~

::

	git clone https://github.com/ninjablocks/client.git
	cd client
	./bin/install.sh

Step Two: Install the Ninja Toolbelt
~~~~

::

	npm install -g ninja-toolbelt

You’ll use this toolbelt in the :ref:`Write Drivers <writedrivers>` quickstart.

Step Three: Run the Client and obtain a serial number.
~~~~

Run the client code in hacking mode
 
::

	NODE_ENV=hacking node client

Examine the output of this command. It should look like this:

::

	[Mon, 22 Apr 2013 21:18:06 GMT] (DEBUG) Binding default loadToken method
	[Mon, 22 Apr 2013 21:18:06 GMT] (DEBUG) Binding default saveToken method
	[Mon, 22 Apr 2013 21:18:06 GMT] (DEBUG) Binding default loadSerial method
	[Mon, 22 Apr 2013 21:18:06 GMT] (DEBUG) Binding default saveSerial method
	[Mon, 22 Apr 2013 21:18:06 GMT] (info) Successfully loaded token from file
	[Mon, 22 Apr 2013 21:18:06 GMT] (info) Successfully loaded serial from file
	[Mon, 22 Apr 2013 21:18:06 GMT] (info) This Ninja's Serial: XXXXXXXXXXXXXXXX
	[Mon, 22 Apr 2013 21:18:06 GMT] (info) loadModule: platform
	[Mon, 22 Apr 2013 21:18:06 GMT] (DEBUG) versioning: using version callback (platform)
	[Mon, 22 Apr 2013 21:18:06 GMT] (info) platform: No device specified

Identify the serial number displayed in this output and copy it to your clipboard.

Step Four: Pair your new Virtual Block
~~~~

Log in to the Ninja Platform and go to the Dashboard. Press the ‘Pair Block’ button and paste in the serial number you obtained in the previous step.

You won’t see anything new on your Dashboard just yet. However, in Settings: Blocks you will see a new Ninja Block, and its IP address should be the same as the computer on which you ran the client.

Video
---------

.. raw:: html

	<iframe width="560" height="315" src="//www.youtube.com/embed/B7QPaPb5ias" frameborder="0" allowfullscreen></iframe>
