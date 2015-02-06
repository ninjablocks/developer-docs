GET device/:guid/subdevice/:subdeviceId/data
--------------------------------------------

Fetch the count of the number of times the sub-device was actuated.

.. code-block:: url

	GET /rest/v0/device/:guid/subdevice/:subdeviceId/data

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	from              number      Timestamp in milliseconds since 01/01/1970, representing
	                              the beginning of the period measurements are requested 
	                              for. 
	to                number      Timestamp representing the end of the period 
	                              measurements are requested for. 
	interval          string      Intervals are specified by a number and a unit of time, 
	                              i.e. 6hour or 1day. The supported time units are: 
	                               * min - Minutes
	                               * hour - Hours
	                               * day - Days
	                               * month - Months
	                               * year - Years
	================= =========== ========================================================

Notes:
 * The sub-device ID is the key of the `subDevices` property of the device. See GET devices
 * Parameters are provided in the query string. Example: ``device/:guid/subdevice/:subdeviceId/data?from=1343268810530&to=1343268820530&interval=1day``
 * If no period is specified we default to fetching 1 week.
 * If no interval is specified we default to 1 hour intervals.

**Example**

Fetch the counts in 1 minute interval of this sub-device:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE01_0_0_11/subdevice/MA9EJ/data?interval=1min&user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": [
	    {
	      "t": "2012-06-28T01:49:00.000+0000",
	      "v": 5
	    },
	    {
	      "t": "2012-06-28T01:50:00.000+0000",
	      "v": 2
	    },
	    {
	      "t": "2012-06-28T01:51:00.000+0000",
	      "v": 8
	    },
	    {
	      "t": "2012-06-28T01:52:00.000+0000",
	      "v": 25
	    },
	    {
	      "t": "2012-06-28T01:53:00.000+0000",
	      "v": 3
	    },
	    {
	      "t": "2012-06-28T01:54:00.000+0000",
	      "v": 6
	    }
	  ]
	}