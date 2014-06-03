Rules
=====

Introduction
------------

**Rules Explained**

A rule is a JSON document, part of which describes a list of preconditions that will trigger a rule, and a list of actions to take if triggered. These lists are arrays and are executed serially.

Documentation on available preconditions and actuations can be `found here <Preconditions/actions documentation>`_.

**Example Rule**

.. code-block:: json

	{
	  "shortName": "Nerf Gun Shooter",
	  "preconditions": [
	    {
	      "handler": "ninjaChange",
	      "params": {
	        "guid": "RFID_DEVICE_GUID",
	        "to": "10101000101000001010101"
	      }
	    }
	  ],
	  "actions": [
	    {
	      "handler": "ninjaSendCommand",
	      "params": {
	        "guid": "RELAY_DEVICE_GUID",
	        "da": "0"
	      }
	    },
	    {
	      "handler": "sleep",
	      "params": {
	        "guid": "N/A",
	        "sleepLength": 3000
	      }
	    },
	    {
	      "handler": "ninjaSendCommand",
	      "params": {
	        "guid": "RELAY_DEVICE_GUID",
	        "da": "1"
	      }
	    },
	    {
	      "handler": "getNinjaSnapshot",
	      "params": {
	        "guid": "CAMERA_DEVICE_GUID"
	      }
	    },
	    {
	      "handler": "sendToDropbox",
	      "params": {
	        "guid": "DROPBOX_DEVICE_GUID"
	      }
	    }
	  ]
	}

REST API Endpoints
------------------

.. toctree::
   :maxdepth: 1
   :glob:

   rules/get_*
   rules/post_*
   rules/put_*
   rules/*

