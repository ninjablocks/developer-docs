.. _apireference_protocol_light:

light
=====

.. _apireference_protocol_light_methods:

Methods
-------

.. _apireference_protocol_light_methods_alertLight:

alertLight(alertState, alertState)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Switches to an alert state for a given number of seconds, before returning to the previous state IF the alert state is still active.

**Parameters**

**alertState** :ref:`light.light# <apireference_state_light>`The state to alert to

**alertState** numberThe time in milliseconds to alert for

**Return Value**

boolean Indicates the light was returned to it's previous state. If this returns false, a new state was set in the meantime.

.. _apireference_protocol_light_methods_setLight:

setLight(state)
~~~~~~~~~~~~~~~

Send a full light state object to the device. Not all properties will be supported by all devices.

**Parameters**

**state** :ref:`light.light# <apireference_state_light>`

**Return Value**

:ref:`light.light# <apireference_state_light>` Returns the current state of the light after setting

.. _apireference_protocol_light_events:

Events
------

.. _apireference_protocol_light_events_state:

state
~~~~~

:ref:`light.light# <apireference_state_light>`

