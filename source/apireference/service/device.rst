.. _apireference_service_device:

device
======

.. _apireference_service_device_methods:

Methods
-------

.. _apireference_service_device_methods_setName:

setName(name)
~~~~~~~~~~~~~

Sets the name of the device.

**Parameters**

**name** :ref:`.device-name <apireference_>`

**Return Value**

:ref:`.device-name <apireference_>`The name that was saved to the device. If null, it is not possible to store the name on the device.

.. _apireference_service_device_methods_traceroute:

traceroute()
~~~~~~~~~~~~

Traces the path to the device. Depending on the device, this may stop at the driver level

**Return Value**

object

