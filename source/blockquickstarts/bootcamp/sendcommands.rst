..  _sendcommands:

Send Commands
=========

Overview
---------

The goal of this quickstart is to show you how to send your block’s devices commands. See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

Steps
---------

Follow the :ref:`get your devices <getyourdevices>` and :ref:`work with sensor readings <workwithsensorreadings>` quickstarts if you haven’t already. This will show you how to instantiate a ninjablocks instance and identify a device that you wish to work with.

We assume our device’s guid has been obtained as above, and is assigned to the variable my_device. In this case that device is Nina’s eyes.

Actuate a device
~~~~

.. code-block:: javascript

	// The 'actuate' method is called with device-specific codez.
	ninja.device(my_device).actuate('FF0000'); // Set an RGB device to pure red.

Video
---------
.. raw:: html

	<iframe width="560" height="315" src="//www.youtube.com/embed/USnmrWtvMfM" frameborder="0" allowfullscreen></iframe>


	