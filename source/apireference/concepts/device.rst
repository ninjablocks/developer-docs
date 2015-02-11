Device
======

A ``Device`` is a view of a single physical device or virtual device (third party web service etc). A device itself is not actuated, it must provide channels for that.

Devices also provide signatures, which are clues found that can help indicate the model, brand, manufacturer etc.

.. image:: images/thing_class_relationships.png
  :width: 60%
  :align: center

Example Device as exposed by the REST API as part of a Thing (currently Device objects are not exposed directly):

.. code-block:: javascript

	"device": {
		"topic": "$device/e43820b2f3",
		"schema": "http://schema.ninjablocks.com/service/device",
		"supportedMethods": null,
		"supportedEvents": [ ],
		"id": "e43820b2f3",
		"naturalId": "137A0000013AB2",
		"naturalIdType": "zigbee",
		"name": "Ninja Smart Plug by Ninja Blocks Inc",
		"thingId": "4e286072-b156-11e4-b892-3c15c2c1b774",
		"channels": [ ... channels exposed by the device ... ],
		"signatures": {
			"ninja:thingType": "socket",
			"zigbee:ManufacturerName": "Ninja Blocks Inc",
			"zigbee:ModelIdentifier": "Ninja Smart Plug"
		}
	}