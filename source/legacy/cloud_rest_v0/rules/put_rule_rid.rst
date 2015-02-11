PUT rule/:rid
-------------

Update a rule.

.. code-block:: url

	PUT /rest/v0/rule/:rid

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

Add a timeout of 60 seconds to rule 89353:

.. code-block:: bash
	
	curl -X 'PUT' \
         -H 'Content-Type: application/json' \
         -d '{"timeout":60,"shortName":"Nerf Gun Shooter","preconditions":[{"handler":"ninjaChange","params":{"guid":"RFID_DEVIC    E_GUID","to":"10101000101000001010101"}}],"actions":[{"handler":"ninjaSendCommand","params":{"guid":"RELAY_DEVICE_GUID"    ,"da":"0"}},{"handler":"sleep","params":{"guid":"N/A","sleepLength":3000}},{"handler":"ninjaSendCommand","params":{"gui    d":"RELAY_DEVICE_GUID","da":"1"}},{"handler":"getNinjaSnapshot","params":{"guid":"CAMERA_DEVICE_GUID"}},{"handler":"sen    dToDropbox","params":{"guid":"DROPBOX_DEVICE_GUID"}}]}' \
         -i https://api.ninja.is/rest/v0/rule/89353?user_access_token=YOUR_ACCESS_TOKEN


**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}