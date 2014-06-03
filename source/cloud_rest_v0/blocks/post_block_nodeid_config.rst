POST block/:nodeId/config
-------------------------

Send a config event from this block.

Config events are intended to be meta information about a device, for example it's IP address if it were an IP camera, whether its plugged in or not, etc.

This endpoint will also accept an array of objects to send multiple config events in one request.

**Note:** The header ``X-Ninja-Token`` is required in the headers of this request, and corresponds to the token acquired via the GET block/:nodeId/activate route.

.. code-block:: url

	POST /rest/v0/block/:nodeId/config

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	G                 string      The port/channel number the device is located on.
	V                 number      The Vendor ID of the device. 
	D                 number      The device ID. 
	type              string      The type of the config event. Currently in our dashboard
	                              we support "UNPLUG" & "PLUGIN", however this can be
	                              anything. 
	================= =========== ========================================================

**Example**

.. code-block:: bash
	
	curl -X 'POST' \
         -H 'X-Ninja-Token: YOUR_BLOCK_TOKEN' \
         -H 'Content-Type: application/json' \
         -d '{"G":"0","V":0,"D":5,"type":"UNPLUG"}' \
         -i https://api.ninja.is/rest/v0/block/123456789ABC/config 

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}