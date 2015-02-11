.. _apireference_service_thing-model:

thing-model
===========

Ninja Sphere - Thing Model Service.

.. _apireference_service_thing-model_methods:

Methods
-------

.. _apireference_service_thing-model_methods_create:

create(thing)
~~~~~~~~~~~~~

Saves a new Thing

**Parameters**

**thing** :ref:`thing <apireference_model_thing>`

**Return Value**

:ref:`thing.id <apireference_model_thing>` 

.. _apireference_service_thing-model_methods_delete:

delete(thingId)
~~~~~~~~~~~~~~~

Deletes a Thing

**Parameters**

**thingId** :ref:`thing.id <apireference_model_thing>`

**Return Value**

:ref:`thing.id <apireference_model_thing>` 

.. _apireference_service_thing-model_methods_fetch:

fetch(id)
~~~~~~~~~

Retrieves a Thing by id

**Parameters**

**id** :ref:`thing.id <apireference_model_thing>`

**Return Value**

:ref:`thing <apireference_model_thing>` 

.. _apireference_service_thing-model_methods_fetchAll:

fetchAll()
~~~~~~~~~~

Retrieves all Things

**Return Value**

:ref:`[]thing <apireference_model_thing>` 

.. _apireference_service_thing-model_methods_fetchByDeviceId:

fetchByDeviceId(deviceId)
~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieves a Thing by device id

**Parameters**

**deviceId** :ref:`device.id <apireference_model_device>`

**Return Value**

:ref:`thing <apireference_model_thing>` 

.. _apireference_service_thing-model_methods_fetchByExample:

fetchByExample(example)
~~~~~~~~~~~~~~~~~~~~~~~

Retrieves all Things that match the example object

**Parameters**

**example** object

**Return Value**

:ref:`[]thing <apireference_model_thing>` 

.. _apireference_service_thing-model_methods_fetchByType:

fetchByType(type)
~~~~~~~~~~~~~~~~~

Fetch a list of things by type

**Parameters**

**type** string

**Return Value**

:ref:`[]thing <apireference_model_thing>` 

.. _apireference_service_thing-model_methods_setLocation:

setLocation(thingId, location)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Updates the location of a Thing

**Parameters**

**thingId** :ref:`thing.id <apireference_model_thing>`

**location** string

**Return Value**

:ref:`thing.id <apireference_model_thing>` 

