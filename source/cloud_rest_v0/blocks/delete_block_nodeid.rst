DELETE block/:nodeId
--------------------

Unpair a block.

At the time of writing the block must be restarted to complete the unpairing process. In future this will not be necessary.

.. code-block:: url

	DELETE /rest/v0/block/:nodeId

**Example**

Unpair the block 'STEALTHYNODE02':

.. code-block:: bash
	
	curl -X 'DELETE' \
         -i https://api.ninja.is/rest/v0/block/STEALTHYNODE02?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	    "result": 1,
	    "error": null,
	    "id": 0
	}