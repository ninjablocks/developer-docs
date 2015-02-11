GET device/:guid/callback
-------------------------

Retrieve the current callback url registered against this device.

.. code-block:: url

	GET /rest/v0/device/:guid/callback

**Example**

Retrieve the current callback for the temperature sensor:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_9/callback?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "url": "http://my-app.herokuapp.com/another_handler"
	  }
	}