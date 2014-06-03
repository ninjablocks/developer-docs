POST device/:deviceGuid/subdevice/:subDeviceId/tickle/:token
------------------------------------------------------------

'Tickle' a 'webhook' sub-device. By calling this, you effectively 'actuate' the device. This is especially useful when used with the corresponding rule precondition handler.

Note:
 * This call does not require authentication, therefore you should do your best to keep the token a secret.
 * The token in this instance in the token received when the create sub-device with category 'webhook' and type 'sensor' call is returned.

.. code-block:: url

	POST /rest/v0/device/:deviceGuid/subdevice/:subDeviceId/tickle/:token

**Example**

Tickles the webhook:

.. code-block:: bash
	
	curl -X 'POST' \
         -i https://api.ninja.is/rest/v0/device/WEBHOOK_0_0_108/subdevice/LA9EJ/tickle/1c0c8929-3318-411d-96e0-36fb7872ea5d


**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}