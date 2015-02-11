POST rule/:rid/suspend
----------------------

Suspend a rule.

.. code-block:: url

	POST /rest/v0/rule/:rid/suspend

**Example**

Suspend rule 89353:

.. code-block:: bash
	
	curl -X 'POST' \
         -i https://api.ninja.is/rest/v0/rule/89353/suspend?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}