.. _apireference_protocol_vibrator:

vibrator
========

.. _apireference_protocol_vibrator_methods:

Methods
-------

.. _apireference_protocol_vibrator_methods_set:

set(state)
~~~~~~~~~~

Turns the vibration on or off. Cancels a running pattern.

**Parameters**

**state** :ref:`common.boolean-state <apireference_state_common>`

.. _apireference_protocol_vibrator_methods_startPattern:

startPattern(state, repeat)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Starts a vibration pattern. Cancels any existing running pattern.

**Parameters**

**state** :ref:`vibration-pattern <apireference_state_vibration-pattern>`

**repeat** numberThe number of times to play this pattern. 0 = forever.

**Return Value**

:ref:`common.success <apireference_state_common>` 

.. _apireference_protocol_vibrator_methods_toggle:

toggle()
~~~~~~~~

Toggles the vibration state. If in a pattern, cancels the pattern first.

**Return Value**

:ref:`common.success <apireference_state_common>` 

.. _apireference_protocol_vibrator_methods_turnOff:

turnOff()
~~~~~~~~~

Turns the vibration off, and cancels any running pattern.

.. _apireference_protocol_vibrator_methods_turnOn:

turnOn(time)
~~~~~~~~~~~~

Turns the vibration on

**Parameters**

**time** numberThe time in ms to vibrate for. 0 = forever.

.. _apireference_protocol_vibrator_events:

Events
------

.. _apireference_protocol_vibrator_events_state:

state
~~~~~

unknown

