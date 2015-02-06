DELETE device/:guid
-------------------

Delete all data about the specified device.

.. code-block:: url

	DELETE /rest/v0/device/:guid

**Example**

Delete your LED device. Note it will be re-created on the next heart beat if plugged in:

.. code-block:: bash
	
	curl -X 'DELETE' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_1000?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}
