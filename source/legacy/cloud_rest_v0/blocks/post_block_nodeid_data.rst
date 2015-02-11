POST block/:nodeId/data
-----------------------

Send a data event from this block.

Data events are intended to be values to be actioned immediately. For example, a button press should be a 'data' event, whereas a temperature reading should be part of a 'heartbeat' event

This endpoint will also accept an array of objects to send multiple datapoints in one request.

**Note:** The header ``X-Ninja-Token`` is required in the headers of this request, and corresponds to the token acquired via the GET block/:nodeId/activate route.

.. code-block:: url

	POST /rest/v0/block/:nodeId/data

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

.. code-block:: bash
	
	curl -X 'POST' \
         -H 'X-Ninja-Token: YOUR_BLOCK_TOKEN' \
         -H 'Content-Type: application/json' \
         -d '{"G":"0","V":0,"D":5,"DA":"1"}' \
         -i https://api.ninja.is/rest/v0/block/123456789ABC/data  

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}