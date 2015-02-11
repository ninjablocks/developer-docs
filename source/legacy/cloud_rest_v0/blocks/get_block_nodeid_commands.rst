GET block/:nodeId/commands
--------------------------

Long GET that will respond with a the requested block's commands. The request will end after each command is received, or after approximately 30 seconds. Requests should be reinitialized in these instances.

*nodeId** must be at least 12 characters in length.

**Note:** The header ``X-Ninja-Token`` is required in the headers of this request, and corresponds to the token acquired via the GET block/:nodeId/activate route.

.. code-block:: url

	GET /rest/v0/block/:nodeId/commands

**Example**

Await a command sent to this block:

.. code-block:: bash
	
	curl -H 'X-Ninja-Token: YOUR_BLOCK_TOKEN' \
         -H 'Content-Type: application/json' \
         -i https://api.ninja.is/rest/v0/block/123456789ABC/commands

**Sample JSON Response**

.. code-block:: json
	
	{"DEVICE":[{"G":"0","V":0,"D":1000,"DA":"FFFFFF"}]}