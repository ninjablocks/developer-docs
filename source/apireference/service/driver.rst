.. _apireference_service_driver:

driver
======

This service is required to be implemented by all Drivers

.. _apireference_service_driver_methods:

Methods
-------

.. _apireference_service_driver_methods_createDevice:

createDevice(driverData, announcementData)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create a new device using the provided configuration.

**Parameters**

**driverData** :ref:`.device-driver-data <apireference_>`

**announcementData** objectAnnouncement data. This gets added to the device announcement.

.. _apireference_service_driver_methods_endPairing:

endPairing()
~~~~~~~~~~~~

Remove the driver from pairing mode.

.. _apireference_service_driver_methods_setLogLevel:

setLogLevel(level)
~~~~~~~~~~~~~~~~~~

Set the logging level of the root logger of the driver's process

**Parameters**

**level** stringThe requested log level

.. _apireference_service_driver_methods_start:

start(config)
~~~~~~~~~~~~~

Starts the driver

**Parameters**

**config** :ref:`.config <apireference_>`Driver configuration object

.. _apireference_service_driver_methods_startDevice:

startDevice(config)
~~~~~~~~~~~~~~~~~~~

Create a new device using the provided configuration.

**Parameters**

**config** objectDriver configuration object

.. _apireference_service_driver_methods_startPairing:

startPairing(period)
~~~~~~~~~~~~~~~~~~~~

Put the driver into pairing mode.

**Parameters**

**period** numberThe requested period in seconds during which pairing mode should be activated.

**Return Value**

numberThe actual number of seconds the driver will be in pairing mode for.

.. _apireference_service_driver_methods_stop:

stop()
~~~~~~

Stops the driver, and any devices it has created since starting.

