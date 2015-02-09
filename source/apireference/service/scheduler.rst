.. _apireference_service_scheduler:

scheduler
=========

This service is required to be implemented by all Apps

.. _apireference_service_scheduler_methods:

Methods
-------

.. _apireference_service_scheduler_methods_cancel:

cancel(id)
~~~~~~~~~~

Cancel a task.

**Parameters**

**id** stringThe id of the task to be cancelled.

.. _apireference_service_scheduler_methods_fetch:

fetch(id)
~~~~~~~~~

Get the description of a task

**Parameters**

**id** stringThe id of the task to be fetched.

.. _apireference_service_scheduler_methods_fetchSchedule:

fetchSchedule()
~~~~~~~~~~~~~~~

Get the complete schedule

.. _apireference_service_scheduler_methods_schedule:

schedule(task)
~~~~~~~~~~~~~~

Schedule a task

**Parameters**

**task** objectThe task to be scheduled.

.. _apireference_service_scheduler_methods_setCoordinates:

setCoordinates(coordinates)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set the scheduler's coordinates.

**Parameters**

**coordinates** :ref:`coordinates <apireference_model_coordinates>`The coordinates of the scheduler.

.. _apireference_service_scheduler_methods_setTimeZone:

setTimeZone(timezone)
~~~~~~~~~~~~~~~~~~~~~

Set the scheduler's time zone.

**Parameters**

**timezone** :ref:`timezone <apireference_model_timezone>`The timezone of the scheduler.

.. _apireference_service_scheduler_methods_status:

status(id)
~~~~~~~~~~

Answer the status of the specified task

**Parameters**

**id** stringThe id of the task to be fetched.

