GET block/:nodeId
-----------------

Returns data about the specified block.

.. code-block:: url

	GET /rest/v0/block/:nodeId

**Example**

Fetch one block's details:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/block/STEALTHYNODE02?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	    "result": 1,
	    "error": null,
	    "id": 0,
	    "data": {
	        "date_created": 1354672575000,
	        "last_active": 1354741967799,
	        "short_name": "Ninja Block"
	    }
	}