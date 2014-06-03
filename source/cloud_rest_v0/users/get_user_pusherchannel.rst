GET user/pusherchannel
----------------------

Returns user's `Pusher <http://pusher.com/>`_ channel key.

Ninja Blocks' pusher key is: ``ccff70362850caf79c9f``

.. code-block:: url

	GET /rest/v0/user/pusherchannel

**Sample JSON Response**

.. code-block:: json

	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "pusherChannel": "1c0c8929-3318-411d-96e0-36fb7872ea5e"
	  }
	}