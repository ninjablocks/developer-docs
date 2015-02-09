.. _apireference_service_updates:

updates
=======

Monitors for any updates being run, and can provide status about updates being required.

.. _apireference_service_updates_methods:

Methods
-------

.. _apireference_service_updates_methods_getAvailable:

getAvailable()
~~~~~~~~~~~~~~

Gets the updatable packages

**Return Value**

:ref:`.updatable-packages <apireference_>`The list of packages to be updated/installed

.. _apireference_service_updates_methods_getProgress:

getProgress()
~~~~~~~~~~~~~

Gets the progress of the current (or previous) update.

**Return Value**

:ref:`.progress <apireference_>`

.. _apireference_service_updates_methods_start:

start()
~~~~~~~

Start the update process

**Return Value**

objectThe list of packages to be updated/installed

