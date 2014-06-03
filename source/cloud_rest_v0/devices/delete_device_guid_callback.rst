DELETE device/:guid/callback
----------------------------

Delete an existing callback against this device.

Once this request returns, the system will no longer POST to the previous callback.

.. code-block:: url

	DELETE /rest/v0/device/:guid/callback

**Example**

Delete the current callback for the temperature sensor:

.. code-block:: bash
	
	curl -X 'DELETE' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_9/callback?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}