DELETE rule/:rid
----------------

Delete a rule.

.. code-block:: url

	DELETE /rest/v0/rule/:rid

**Example**

Delete rule 89353:

.. code-block:: bash
	
	curl -X 'DELETE' \
         -i https://api.ninja.is/rest/v0/rule/89353?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}