.. _apireference_service_room-model:

room-model
==========

Ninja Sphere - Room Model Service.

.. _apireference_service_room-model_methods:

Methods
-------

.. _apireference_service_room-model_methods_create:

create(room)
~~~~~~~~~~~~

Saves a new Room

**Parameters**

**room** :ref:`room <apireference_model_room>`

**Return Value**

:ref:`room.id <apireference_model_room>`

.. _apireference_service_room-model_methods_delete:

delete(roomId)
~~~~~~~~~~~~~~

Deletes a Room

**Parameters**

**roomId** :ref:`room.id <apireference_model_room>`

**Return Value**

:ref:`room.id <apireference_model_room>`

.. _apireference_service_room-model_methods_fetch:

fetch(roomId)
~~~~~~~~~~~~~

Retrieves a Room

**Parameters**

**roomId** :ref:`room.id <apireference_model_room>`

**Return Value**

:ref:`room <apireference_model_room>`

.. _apireference_service_room-model_methods_fetchAll:

fetchAll()
~~~~~~~~~~

Retrieves all Rooms

**Return Value**

:ref:`[]room <apireference_model_room>`

.. _apireference_service_room-model_methods_fetchByExample:

fetchByExample(example)
~~~~~~~~~~~~~~~~~~~~~~~

Retrieves all Things that match the example object

**Parameters**

**example** object

**Return Value**

:ref:`[]room <apireference_model_room>`

.. _apireference_service_room-model_methods_fetchRoomThingIds:

fetchRoomThingIds(roomId)
~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieves the ids of all Things in a Room

**Parameters**

**roomId** :ref:`room.id <apireference_model_room>`

**Return Value**

:ref:`[]thing.id <apireference_model_thing>`

.. _apireference_service_room-model_methods_moveThing:

moveThing(fromRoomId, toRoomId, thingId)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Moves a Thing from one Room to another Room

**Parameters**

**fromRoomId** :ref:`room.id <apireference_model_room>`Current room id

**toRoomId** :ref:`room.id <apireference_model_room>`Target room id

**thingId** :ref:`thing.id <apireference_model_thing>`

**Return Value**

nullTODO: Success value?

.. _apireference_service_room-model_methods_removeThing:

removeThing(roomId, thingId)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Removes a Thing from a Room

**Parameters**

**roomId** :ref:`room.id <apireference_model_room>`

**thingId** :ref:`thing.id <apireference_model_thing>`

**Return Value**

nullTODO: Success value?

.. _apireference_service_room-model_methods_thingsByType:

thingsByType(roomId, thingType)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieves all Things of a certain thing type from a room

**Parameters**

**roomId** :ref:`room.id <apireference_model_room>`

**thingType** :ref:`thing.type <apireference_model_thing>`

**Return Value**

:ref:`[]thing <apireference_model_thing>`

