..  _writedrivers:

Write Drivers
=========

In this quickstart you’ll learn how easy it is to create a driver using the Ninja Toolbelt. You’ll create a generic driver in this fashion, and then make some changes to the code to achieve your goals.

Please ensure you have met the prerequisite steps as outlined in :ref:`Driver Awareness <driverawareness>` before attempting this quickstart.

Overview
---------

Drivers reside within a drivers directory in the client directory. Ensure you’re within the client directory before you perform Step One.

Step One: Create a template driver
~~~~

::

	ninja create drivers/my-first-driver

Step Two: Initialise the Driver
~~~~

::

	cd drivers/my-first-driver
	npm init

Step Three: Accept defaults or provide content
~~~~

As npm init runs you will be asked to provide content that is specific to your driver. If you just want to get started quickly, you may simply accept the defaults.

Step Four: Implement features that are specific to Devices you wish to support
~~~~

Take the time to read through the code that you find in index.js and lib/device.js

Anatomy of a Driver
---------

TODO

See :ref:`Write a Device <writeadevice>` for how to do implement device-specific features as well as other Device-level activities.

Congratulations! You are ready to leave the Realm of Applications and enter the Devices!

*Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!*