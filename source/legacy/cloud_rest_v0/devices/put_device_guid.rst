PUT device/:guid
----------------

Update a device, including sending a command.

Sending a command and updating the meta data are two distinct operations internally. If the response we send is in the affirmative, ie result = 1, then both have succeeded. However, if it is the negative, ie result = 0, then one or both of the operations failed, and you won't know which one.

We've implemented it this way for conceptual consistency. We recommend using two separate API calls if you need to handle errors.

**Note:** You must give us at least one parameter.

.. code-block:: url

	PUT /rest/v0/device/:guid

**Parameters**

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	DA                string      The data value to send to the device. 
	shortName         string      The meta data title of the device to update.
	================= =========== ========================================================

**Example**

Set the color of your LED to Purple:

.. code-block:: bash
	
	curl -X 'PUT' \
         -H 'Content-Type: application/json' \
         -d '{ "DA" : "FF00FF" }' \
         -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_1000?user_access_token=YOUR_ACCESS_TOKEN

Rename your LED:

.. code-block:: bash

	curl -X 'PUT' \
	     -H 'Content-Type: application/json' \
	     -d '{ "shortName" : "The color changing light" }' \
	     -i https://api.ninja.is/rest/v0/device/ASTEALTHYNODE_0_0_1000?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: json
	
	{
	  "result": 1,
	  "error": null,
	  "id": 0
	}