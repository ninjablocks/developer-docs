GET device/:guid/data
---------------------

Return the historical data for the specified device.

.. code-block:: url

	GET /rest/v0/device/:guid/data

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
	fn                string      The folding function specifies how the datapoints are 
	                              reduced within each interval. The default folding 
	                              function is mean which returns the mean (average). 
	                              The following folding functions are supported: 
	                               * mean - Average of all datapoints
	                               * sum - Sum of all datapoints
	                               * min - Minimum value of all datapoints
	                               * max - Maximum value of all datapoints
	                               * stddev - Standard deviation of all datapoints
	                               * ss - Sum of squares of all datapoints
	                               * count - Total number of datapoints in the DataSet
	================= =========== ========================================================

Notes:
 * Parameters are provided in the query string.
 * Example: device/:guid/data?from=1343268810530&to=1343268820530&fn=mean&interval=1day
 * If no period is specified we default to fetching 1 week.
 * If no folding function is specified we default to 'mean'.
 * If no interval is specified we default to 1 hour intervals.

**Example**

Fetch the mean temperature in 1 day intervals for the past week:

.. code-block:: bash
	
	curl -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE01_0301_0_31/data?fn=mean&interval=1day&user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0,
	  "data": [
	    {
	      "t": "2012-12-18T00:00:00.000+0000",
	      "v": 26.560000000000002
	    }
	  ]
	}