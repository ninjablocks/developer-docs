GET block/:nodeId/activate
--------------------------

Activate a block and return its token. This token should be used with all subsequent requests. Your nodeId should be a 12+ alphanumeric character identifier, ideally a unique serial number.

 * ``nodeId`` should be a unique string at least 12 characters in length, ideally a hardware serial number accessible by the user.
 * If authentication credentials are provided with the request, ie via an ``access_token`` or ``user_access_token``, an activated block token will immediately be returned.
 * If no authentication credentials are provided, a response will only be returned only after a user has successfully executed the `POST to claim a block <rest_v0/blocks/post-block>`_. In this case the request is a 'long GET', and thus if the response ends without a body, the request should be reinitialized.

.. code-block:: url

	GET /rest/v0/block/:nodeId/activate

**Example**

Listen for activation from a the block with nodeId 123456789ABC:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/block/123456789ABC/activate

**Sample JSON Response**

.. code-block:: json
	
	{
	  "token": "1c0c8929-3318-411d-96e0-36fb7872ea5c"
	}