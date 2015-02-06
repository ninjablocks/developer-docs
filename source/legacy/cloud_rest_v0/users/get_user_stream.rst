GET user/stream
---------------

Returns the 30 most recent entries in the authenticating user's activity stream.

.. code-block:: url

	GET /rest/v0/user/stream

**Sample JSON Response**

.. code-block:: json

	[
	  {
	    "message": "Rule \"Door Bell\" Executed.",
	    "timestamp": 1343268860669
	  },
	  {
	    "message": "Rule \"Door Bell\" Executed.",
	    "timestamp": 1343268810530
	  },
	  {
	    "message": "Rule \"Door Bell\" Executed.",
	    "timestamp": 1343268782287
	  },
	  {
	    "message": "Rule \"Door Bell\" Executed.",
	    "timestamp": 1343268757513
	  }
	]