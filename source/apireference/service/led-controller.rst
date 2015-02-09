.. _apireference_service_led-controller:

led-controller
==============

LED Controller Service.

.. _apireference_service_led-controller_methods:

Methods
-------

.. _apireference_service_led-controller_methods_blank:

blank()
~~~~~~~

Blanks the screen. Only works when controls are disabled.

.. _apireference_service_led-controller_methods_disableControl:

disableControl()
~~~~~~~~~~~~~~~~

Disables the normal UI

.. _apireference_service_led-controller_methods_displayColor:

displayColor(config)
~~~~~~~~~~~~~~~~~~~~

Displays a color for a number of milliseconds. 0=forever. Will return to controls if they are enabled, or a blank screen if they are not. Will not sleep while displaying.

**Parameters**

**config** object

.. _apireference_service_led-controller_methods_displayDrawing:

displayDrawing()
~~~~~~~~~~~~~~~~

Displays a blank frame that can be updated with the draw method

.. _apireference_service_led-controller_methods_displayIcon:

displayIcon(config)
~~~~~~~~~~~~~~~~~~~

Displays an icon for a number of milliseconds. 0=forever. Will return to controls if they are enabled, or a blank screen if they are not. Will not sleep while displaying.

**Parameters**

**config** object

.. _apireference_service_led-controller_methods_displayPairingCode:

displayPairingCode(config)
~~~~~~~~~~~~~~~~~~~~~~~~~~

Displays a pairing code for a number of milliseconds. 0=forever. Will return to controls if they are enabled, or a blank screen if they are not. Will not sleep while displaying.

**Parameters**

**config** object

.. _apireference_service_led-controller_methods_displayResetMode:

displayResetMode(mode)
~~~~~~~~~~~~~~~~~~~~~~

Displays a visual indication of the current reset mode.

**Parameters**

**mode** object

.. _apireference_service_led-controller_methods_displayUpdateProgress:

displayUpdateProgress(config)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Displays the update progress screen at a position (0..1)

**Parameters**

**config** object

.. _apireference_service_led-controller_methods_draw:

draw(updates)
~~~~~~~~~~~~~

Updates a list of pixels on the drawing screen.

**Parameters**

**updates** []{u'items': {u'items': {u'minimum': 0, u'type': u'number', u'maximum': 255}, u'type': u'array', u'description': u'Each update is []uint8 [x,y,r,g,b]', u'maxItems': 5}, u'type': u'array'}

.. _apireference_service_led-controller_methods_enableControl:

enableControl()
~~~~~~~~~~~~~~~

Enables the normal UI

