GET block
---------

Returns all the blocks paired to an account.

.. code-block:: url

	GET /rest/v0/block

**Example**

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/block?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	    "result": 1,
	    "error": null,
	    "id": 0,
	    "data": {
	        "STEALTHYNODE01": {
	            "date_created": 1354675751000,
	            "last_active": 1354765031967,
	            "short_name": "Ninja Block"
	        },
	        "STEALTHYNODE02": {
	            "date_created": 1354672575000,
	            "last_active": 1354741967799,
	            "short_name": "Ninja Block"
	        }
	    }
	}