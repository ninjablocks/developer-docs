PUT user/realtime
-----------------

Sets the amount of time that 'realtime' mode will be active for, defaulting to 10 seconds. If successful, during this duration all messages received from all blocks will be forwarded via Pusher.

.. code-block:: url

	PUT /rest/v0/user/realtime

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	length            number      The amount of time to activate 'realtime' mode for. 
	                              This value must be between 1 and 30. Values out of this 
	                              range will be ignored, and defaulted to 10.
	================= =========== ========================================================

**Sample JSON Response**

.. code-block:: json

	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}