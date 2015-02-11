GET devices
-----------

Returns the list of devices associated with the authenticating user.

.. code-block:: url

	GET /rest/v0/devices

**Example**

List all your devices:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/devices?user_access_token=YOUR_API_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": {
	    "ASTEALTHYNODE01_0301_0_30": {
	        "css_class": "sensor rf digital humidity",
	        "default_name": "Humidity",
	        "device_type": "humidity",
	        "did": "30",
	        "gid": "0301",
	        "has_subdevice_count": 0,
	        "has_time_series": 1,
	        "is_actuator": 0,
	        "is_sensor": 1,
	        "is_silent": 0,
	        "last_data": {
	            "DA": 58,
	            "timestamp": 1355791804474
	        },
	        "meta": {},
	        "node": "ASTEALTHYNODE01",
	        "shortName": "Humidity",
	        "subDevices": {},
	        "vid": "0"
	    },
	    "ASTEALTHYNODE01_0301_0_31": {
	        "css_class": "sensor rf digital temperature",
	        "default_name": "Temperature",
	        "device_type": "temperature",
	        "did": "31",
	        "gid": "0301",
	        "has_subdevice_count": 0,
	        "has_time_series": 1,
	        "is_actuator": 0,
	        "is_sensor": 1,
	        "is_silent": 0,
	        "last_data": {
	            "DA": 26.6,
	            "timestamp": 1355791804475
	        },
	        "meta": {},
	        "node": "ASTEALTHYNODE01",
	        "shortName": "Temperature",
	        "subDevices": {},
	        "vid": "0"
	    },
	    "ASTEALTHYNODE01_0_0_1000": {
	        "css_class": "actuator cape led rgbled",
	        "default_name": "On Board RGB LED",
	        "device_type": "rgbled",
	        "did": "1000",
	        "gid": "0",
	        "has_subdevice_count": 0,
	        "has_time_series": 0,
	        "is_actuator": 1,
	        "is_sensor": 1,
	        "is_silent": 0,
	        "last_data": {
	            "DA": "22B42B",
	            "timestamp": 1355790209080
	        },
	        "meta": {},
	        "node": "ASTEALTHYNODE01",
	        "shortName": "On Board RGB LED",
	        "subDevices": {},
	        "vid": "0"
	    },
	    "ASTEALTHYNODE01_0_0_11": {
	        "css_class": "sensor serial rf rf433 receiver transmitter",
	        "default_name": "RF 433Mhz",
	        "device_type": "rf433",
	        "did": "11",
	        "gid": "0",
	        "has_subdevice_count": 1,
	        "has_time_series": 0,
	        "is_actuator": 1,
	        "is_sensor": 1,
	        "is_silent": 0,
	        "last_data": {
	            "DA": "010001010101010100010101",
	            "timestamp": 1355789891324
	        },
	        "meta": {},
	        "node": "ASTEALTHYNODE01",
	        "shortName": "RF 433Mhz",
	        "subDevices": {
	            "6l8At": {
	                "category": "rf",
	                "data": "011111110001010100110000",
	                "shortName": "Door Bell",
	                "type": "sensor"
	            }
	        },
	        "vid": "0"
	    }
	  }
	}
