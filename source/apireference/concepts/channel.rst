Device Channels
===============

A Device Channel is the actuation and state component of a device, and devices can have many channels. Each channel implements a protocol, and implements a subset of supported methods, and emits a subset of supported events.

Take a Philips Hue bulb for example. In the Ninja model, the bulb itself isn't actuated, but the channel associated with the bulb is actuated. One channel is specified to use the :ref:`on-off protocol <apireference_protocol_on-off>`_, which supports methods like `set(bool)`, and emits a boolean state. This same protocol is also used by a Ninja Smart Socket and any other device that supports the concept of "turning on and off".

Of course, a light like the Philips Hue exposes many more channels with different protocols, such as *brightness*, *color* (if it's a color-changing model), and
*identify* (to help the user work out which light is which).

Example Channel as exposed by the REST API as part of a Thing (embedded in a Device object):

.. code-block:: javascript

	"channels": [
		...,
		{
			"topic": "$device/e43820b2f3/channel/1-6-in",
			"schema": "http://schema.ninjablocks.com/protocol/on-off",
			"supportedMethods": [
				"turnOff",
				"turnOn",
				"set",
				"toggle"
			],
			"supportedEvents": [ ],
			"id": "1-6-in",
			"protocol": "on-off",
			"deviceId": "e43820b2f3",
			"lastState": {
				timestamp: 1423309028633,
				payload: false
			}
		},
		...
	]