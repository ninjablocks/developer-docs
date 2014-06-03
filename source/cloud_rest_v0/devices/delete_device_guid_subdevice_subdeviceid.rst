DELETE device/:guid/subdevice/:subdeviceId
------------------------------------------

Delete the specified sub-device. Note that if there are any rules attached to this sub-device they will not be deleted, but instead become ineffectual.

.. code-block:: url

	DELETE /rest/v0/device/:guid/subdevice/:subdeviceId

**Example**

Delete the specified sub-device:

.. code-block:: bash
	
	curl -X 'DELETE' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_11/subdevice/MB0FH?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}