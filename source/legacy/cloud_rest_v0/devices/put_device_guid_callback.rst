PUT device/:guid/callback
-------------------------

Update an existing callback against this device.

.. code-block:: url

	PUT /rest/v0/device/:guid/callback

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	url               string      The URL you wish to register a callback against. 
	================= =========== ========================================================

**Example**

Update the temperature callback:

.. code-block:: bash
	
	curl -X 'PUT' \
         -H 'Content-Type: application/json' \
         -d '{ "url" : "http://my-app.herokuapp.com/different_temp_handler" }' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_9/callback?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}