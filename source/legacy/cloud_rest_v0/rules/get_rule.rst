GET rule
--------

Fetch all of a users' rules.

.. code-block:: url

	GET /rest/v0/rule

**Example**

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/rule?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": [
	    {
	      "rid": 46001,
	      "preconditions": [
	        {
	          "handler": "ninjaChange",
	          "params": {
	            "to": "011111110001010100110000",
	            "guid": "2712BB000675_1_0_11",
	            "shortName": "Red Button"
	          }
	        }
	      ],
	      "actions": [
	        {
	          "handler": "ninjaSendCommand",
	          "params": {
	            "guid": "2712BB000675_0_0_1000",
	            "da": "0000FF",
	            "shortName": "Blue"
	          }
	        }
	      ],
	      "store": {},
	      "suspended": false,
	      "shortName": "Blue",
	      "timeout": 0
	    },
	    {
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
	  ]
	}