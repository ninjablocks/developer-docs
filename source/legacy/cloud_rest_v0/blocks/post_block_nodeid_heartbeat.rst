POST block/:nodeId/heartbeat
----------------------------

***Deprecated***

Send a heartbeat from this block.

**Important:** the request body takes the form of an array of objects, whose parameters are outlined below.

Heartbeat events are intended to be values to be analyzed in due course. For example, a temperature reading should be part of a 'heartbeat' event, whereas a button press should be a `data <rest_v0/blocks/post-block-data>`_ event.

**Note:** The header ``X-Ninja-Token`` is required in the headers of this request, and corresponds to the token acquired via the GET block/:nodeId/activate route.

.. code-block:: url

	POST /rest/v0/block/:nodeId/heartbeat

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	G                 string      The port/channel number the device is located on.
	V                 number      The Vendor ID of the device. 
	D                 number      The device ID. 
	DA                string      The data value that this device is reporting. 
	================= =========== ========================================================

**Example**

Send a heartbeat from a temperature device 20 degrees C and report RGB LED device as purple. Note that heartbeats contain an array of device data, it must be submitted as an array even if there is only a single device.

.. code-block:: bash
	
	curl -X 'POST' \
         -H 'X-Ninja-Token: YOUR_BLOCK_TOKEN' \
         -H 'Content-Type: application/json' \
         -d '[{"G":"0","V":0,"D":9,"DA":"20"},{"G":"0","V":0,"D":1000,"DA":"FF00FF"}]' \
         -i https://api.ninja.is/rest/v0/block/123456789ABC/heartbeat 

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}