POST device/:guid/subdevice
---------------------------

Create a new sub-device associated with the specified device and return a unique ID within the device.

Sub-devices allow you to store different values against one device. For example, various mobile numbers against the SMS device, different 'webhook' actuators against the 'webhook' device, and different RF binary values against the RF433MHz device.

Please note that the different categories of sub-devices may return different data. For example, the create 'webhook' 'sensor' sub-device call will return a token that is used as part of the :ref:`URL to 'tickle' it <device-webhook-subdevice-tickle>`, whereas most others will just return the id of the sub-device.

**Webhooks Note:** to enable webhooks the user must have added the Webhooks device, which is done via the "Services" tab in the settings page, or by a GET to https://api.ninja.is/auth/webhook. For more information about Webhooks see our `GitHub wiki <https://github.com/ninjablocks/ninjablocks.github.com/wiki/_pages>`_ for examples.

Depending on the type of category, a call to create a sub-device will return slightly different results. These are enumerated below.

.. code-block:: url

	POST /rest/v0/device/:guid/subdevice

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	category          string      The category of sub-device. Allowed: "rf", "webhook", 
	                              "sms". This determines the behavior associated with 
	                              the sub-device, and MUST correspond to the type of 
	                              device used against. 
	type              string      The type of sub-device, whether it is an actuator or a 
	                              sensor. Allowed: "actuator" or "sensor" 
	shortName         string      The short name describing the sub-device. 
	data              string      Data to be stored in the sub-device
	url               string      URL to store in the sub-device in a webhook actuator 
	                              (category must be 'webhook' and type must be
	                              'actuator'). 
	================= =========== ========================================================

**Sensor Example**

Create a webhook sensor that can be actuated via a tickle:

.. code-block:: bash
	
	curl -X 'POST' \
         -H 'Content-Type: application/json' \
         -d '{ "category" : "webhook", "type":"sensor", "shortName":"My Sensor Webhook" }' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_9/subdevice?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "id":"LA9EJ",
	    "token": "1c0c8929-3318-411d-96e0-36fb7872ea5d"
	  }
	}

**RF Actuator Example**

Create a RF actuator:

.. code-block:: bash
	
	curl -X 'POST' \
         -H 'Content-Type: application/json' \
         -d '{ "category" : "rf", "type":"actuator", "shortName":"My RF Actuator" }' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_9/subdevice?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "id":"MB0FH"
	  }
	}