Reference Docs
==============

Core Concepts
-------------

The Ninja Sphere has a slightly different view to typical Internet of Things systems, including the previous Ninja Blocks platform. Instead of everything revolving around a **Device**, you instead control conceptual **Things**. A *Thing* is bound to a device, but could be swapped out later - your *reading lamp* Thing might start with a *ZigBee Socket*, but later you change it to be a *LIFX* - no problem, all your presets, rules and intelligence still work, you now just have color control as well.

* :doc:`concepts/site` - A house or building where one or more Ninja devices are installed, e.g. *Home at 123 Fake St*.

* :doc:`concepts/room` - A room or area inside a Site that contains Things, e.g. *Living Room*, *Hallway*.

* :doc:`concepts/thing` - A conceptual object that you want to control, e.g. *Sally's Phone*, *Living Room Heater*.

* :doc:`concepts/device` - A physical device, which can be promoted to a Thing, e.g. *iPhone 54:32:10:98:76*.

* :doc:`concepts/protocol` - The language we speak, and the methods we can call, to control part of device's functionality in Ninja land, e.g. *on-off* for a switch or light, *notification* for an iPhone, Android, XBMC/Kodi, etc showing a notification.

* :doc:`concepts/channel` - A binding between a device and a protocol, e.g. the *LIFX Bulb* and the *Philips Hue* have separate  channels using protocols such as *on-off*, *brightness*, *color*.

* :doc:`concepts/driver` - A small piece of software that bridges communications between a Ninja device protocol and an external protocol, e.g. the *Philips Hue* creates *Hue Bulb Devices* by talking to the *Hue Base Station* via REST.

* :doc:`concepts/app` - A piece of software installed by users that extends the Ninja Sphere ecosystem, locally and/or in the cloud.

.. toctree::
  :hidden:

  concepts/site
  concepts/room
  concepts/thing
  concepts/device
  concepts/channel
  concepts/protocol
  concepts/driver
  concepts/app

App & Driver Interfaces
-----------------------

.. toctree::
  :maxdepth: 2

  model/index
  service/index
  protocol/index
  state/index

Sphere API Services
-------------------

.. toctree::
  :maxdepth: 2

  restapi/index
  cloudrpc/index