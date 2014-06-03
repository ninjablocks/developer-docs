.. _v0-device-create-callback:

POST device/:guid/callback
--------------------------

Register a new callback against this device.

Callbacks are URLs that we will POST to with this device's data, as soon as we receive it

If you have already registered a callback against this device, this call will 409 Conflict. You should PUT instead.

.. code-block:: url

	POST /rest/v0/device/:guid/callback

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	url               string      The URL you wish to register a callback against. 
	================= =========== ========================================================

**Example**

Set a new callback for a temperature sensor:

.. code-block:: bash
	
	curl -X 'POST' \
         -H 'Content-Type: application/json' \
         -d '{ "url" : "http://my-app.herokuapp.com/callback_handler" }' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_9/callback?user_access_token=YOUR_ACCESS_TOKEN


**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}