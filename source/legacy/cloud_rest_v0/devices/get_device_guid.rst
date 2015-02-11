GET device/:guid
----------------

Fetch metadata about the specified device.

.. code-block:: url

	GET /rest/v0/device/:guid

**Example**

Fetch the meta data for the specified device:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE01_0301_0_31?user_access_token=YOUR_API_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "vid": "0",
	    "did": "31",
	    "device_type": "temperature",
	    "default_name": "Temperature",
	    "css_class": "sensor rf digital temperature",
	    "is_sensor": 1,
	    "is_actuator": 0,
	    "is_silent": 0,
	    "has_time_series": 1,
	    "has_subdevice_count": 0,
	    "gid": "0301",
	    "guid": "ASTEALTHYNODE01_0301_0_31",
	    "node": "ASTEALTHYNODE01",
	    "meta": {},
	    "subDevices": {},
	    "last_data": {
	      "DA": 25.1,
	      "timestamp": 1355792584678
	    }
	  }
	}
