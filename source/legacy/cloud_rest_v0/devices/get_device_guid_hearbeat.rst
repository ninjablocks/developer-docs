GET device/:guid/heartbeat
--------------------------

Return the last heartbeat for the specified device. i.e. its "current" or more accurately last reported value.

.. code-block:: url

	GET /rest/v0/device/:guid/heartbeat

**Example**

Retrieve the current color of your onboard LED:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_1000/heartbeat?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "G": "0301",
	    "V": 0,
	    "D": 31,
	    "DA": 24.9,
	    "GUID": "ASTEALTHYNODE01_0301_0_31",
	    "timestamp": 1355792884794,
	    "node": "ASTEALTHYNODE01"
	  }
	}
