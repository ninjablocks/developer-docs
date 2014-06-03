GET rule/:rid
-------------

Fetch the specified rule.

.. code-block:: url

	GET /rest/v0/rule/:rid

**Example**

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/rule/89353?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "rid": 89353,
	    "preconditions": [
	      {
	        "handler": "ninjaChange",
	        "params": {
	          "guid": "RFID_DEVICE_GUID",
	          "to": "10101000101000001010101"
	        }
	      }
	    ],
	    "actions": [
	      {
	        "handler": "ninjaSendCommand",
	        "params": {
	          "guid": "RELAY_DEVICE_GUID",
	          "da": "0"
	        }
	      },
	      {
	        "handler": "sleep",
	        "params": {
	          "guid": "N/A",
	          "sleepLength": 3000
	        }
	      },
	      {
	        "handler": "ninjaSendCommand",
	        "params": {
	          "guid": "RELAY_DEVICE_GUID",
	          "da": "1"
	        }
	      },
	      {
	        "handler": "getNinjaSnapshot",
	        "params": {
	          "guid": "CAMERA_DEVICE_GUID"
	        }
	      },
	      {
	        "handler": "sendToDropbox",
	        "params": {
	          "guid": "DROPBOX_DEVICE_GUID"
	        }
	      }
	    ],
	    "store": {},
	    "suspended": false,
	    "shortName": "Nerf Gun Shooter",
	    "timeout": 0
	  }
	}