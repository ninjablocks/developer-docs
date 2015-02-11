POST block
----------

Attempt to claim an unclaimed block.

Note that a result of 1 indicates the claim attempt was received successfully NOT that the claim was successful (this will change in v1 of the API). The first block requesting activation with a matching nodeid within 30 seconds will be given a token linking it to the user making this request.

.. code-block:: url

	POST /rest/v0/block

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	nodeid            string      The ID of the block you are attempting to claim. This 
	                              block must be currently awaiting activation. ID's have 
	                              a minimum length of 12 characters. 
	================= =========== ========================================================

**Example**

Attempt to claim block 123456789ABC on behalf of the user identified by their user access token

.. code-block:: bash
	
	curl -X 'POST' \
         -H 'Content-Type: application/json' \
         -d '{"nodeid":"123456789ABC"}' \
         -i https://api.ninja.is/rest/v0/block?user_access_token=YOUR_API_TOKEN 

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}