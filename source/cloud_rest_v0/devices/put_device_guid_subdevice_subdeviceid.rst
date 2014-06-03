PUT device/:guid/subdevice/:subdeviceId
---------------------------------------

Update information about the specified sub-device.

.. code-block:: url

	PUT /rest/v0/device/:guid/subdevice/:subdeviceId

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
	data              string      The data to be stored against the subdevice.
	url               string      URL to store in the sub-device in a webhook actuator 
	                              (category must be 'webhook' and type must be
	                              'actuator'). 
	================= =========== ========================================================

**Example**

Update the data stored in the specified sub-device:

.. code-block:: bash
	
	curl -X 'PUT' \
         -H 'Content-Type: application/json' \
         -d '{ "data" : "100010100010101011010110" }' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_11/subdevice/MB0FH?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}
