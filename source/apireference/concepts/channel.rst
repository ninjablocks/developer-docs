Device Channels
===============

A Device Channel is the actuation component of Device, and devices can have many channels. Each channel implements a protocol, but any optional attributes that are supported must be listed in ‘supportedProperties’.

Take a Hue lightbulb for example. In the Ninja model, the bulb itself isn't actuated, but the channel associated with the bulb is actuated. This channel is linked to the `light protocol <https://github.com/ninjablocks/schemas/blob/master/protocol/light.json>`_ which has properties ``hue``, ``saturation``, ``brightness``, ``alert``, and ``duration``.

::

  {
    "deviceId": "hue:0001bc57abc7021",
    "channelId": "default",
    "protocol": "http://ninjablocks.com/protocols/light",
    "supportedProperties": ["hue","saturation","brightness","alert","duration"]
  }

This model allows us to associate single devices to multiple channels which provides a great deal of flexibility.

**Examples (device id - channel id)**

* ``bluetooth:0017abc5c2519c`` - ``alert`` (a StickNFind)
* ``dropbox:18282614451`` - ``saveFile`` (DropBox account)
* ``xbmc:192.168.1.2:3000`` - ``popupMessage`` (an XBMC instance)
