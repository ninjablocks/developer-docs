Core Concepts
=============

The first class citizen in the Ninja Platform are devices. **Devices** are things like temperature sensors, LED lights, SMS, and can even be services such as Twitter and Facebook (anything really). These things can sense, actuate, and in some cases both.

Devices talk to the Ninja Platform via a hub which we call a 'block'. **Blocks** are essentially just gateways between your devices and our platform. They handle authentication, configuration, and routing to and from your devices.

As a developer, after you have been :doc:`authorized </rest_v0/authentication>` to access a user's device data, you will want to subscribe to this data. This is easily accomplished with ``callbacks`` (see :ref:`here <v0-device-create-callback>`), a neat feature that allows you to register a URL against a device that we will POST to whenever data is received by that device. When working with callbacks as a third party application developer, we recommend `requestb.in <http://requestb.in/>`_ to assist with troubleshooting.

Devices have numerous properties, but a few you will see over and over again:
 * ``GUID`` - the device's globally unique ID.
 * ``DA`` - the data value being reported by the device
 * ``D`` - the device ID, unique within a manufacturer's devices.
 * ``V`` - the vendor ID of the device, unique to the manufacturer.
 * ``G`` - a number corresponding to the port that the device is attached to.

In some cases, you might have many things talking to 1 device, for example an RF module, or Bluetooth dongle. In this case we allow for creating 'sub-devices'. **Sub-devices** can be either sensors or actuators, and essentially allow you to class data that might be sent/received by that device. For example, your RF module might report ``101000001111101010000`` when you press your door bell. Saving this value as a sensor sub-device allows the user a more human interaction. Depending on your application, you may never have to interact with sub-devices.

You can add web services as devices too, such as Twitter, Webhooks, Facebook, Email, Twilio, etc. The list can be found in `your account <https://a.ninja.is/networking>`_ page.