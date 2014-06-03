POST rule
---------

Create a new rule. If successful, this endpoint will return a 'rid' which is the ID of the rule created.

.. code-block:: url

	POST /rest/v0/rule

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	shortName         string      The name of your rule. 
	preconditions     array       Array of precondition handlers.
	                              `See further documentation. <https://github.com/ninjablocks/ninjablocks.github.com/wiki/Rules-Engine-Documentation>`_
	actions           array       Array of precondition handlers.
	                              `See further documentation. <https://github.com/ninjablocks/ninjablocks.github.com/wiki/Rules-Engine-Documentation>`_
	timeout           number      Number of seconds to wait before executing this rule again (optional)
	================= =========== ========================================================

**Example**

.. code-block:: bash
	
	curl -X 'POST' \
       -H 'Content-Type: application/json' \
       -d '{"shortName":"Nerf Gun Shooter","preconditions":[{"handler":"ninjaChange","params":{"guid":"RFID_DEVICE_GUID","to":  "10101000101000001010101"}}],"actions":[{"handler":"ninjaSendCommand","params":{"guid":"RELAY_DEVICE_GUID","da":"0"}},{  "handler":"sleep","params":{"guid":"N/A","sleepLength":3000}},{"handler":"ninjaSendCommand","params":{"guid":"RELAY_DEV  ICE_GUID","da":"1"}},{"handler":"getNinjaSnapshot","params":{"guid":"CAMERA_DEVICE_GUID"}},{"handler":"sendToDropbox","  params":{"guid":"DROPBOX_DEVICE_GUID"}}]}' \
       -i https://api.ninja.is/rest/v0/rule?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	  "data":{
	    "rid":"89353"
	  }
	}