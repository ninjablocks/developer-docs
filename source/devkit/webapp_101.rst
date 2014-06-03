WebApp 101
==========

Congratulations, if you got this far you've gotten all the techie bits and pieces working and you now see your brand new Ninja Sphere web app running right off your Dev Kit.

.. image:: images/webapp-empty.png
  :width: 60%
  :align: center

Unlike the original Ninja Blocks platform, the Ninja Sphere platform is primarily accessed through your local gateway - your Dev Kit (and eventually your Spheramid).

While the primary UI for Sphere will be delivered as native mobile applications accessing your local gateway's REST endpoints, for development we built a simple web interface.

Adding & calibrating a room
---------------------------
The first step in using the WebApp is to add a room. The webapp will then take you through the process of calibrating the room with your Ninja Sphere Tag.

**Important** currently the Ninja Sphere Tag will only send signals when the button on the side is pressed and the rest light on the top is blinking fast.

It must be in this state when calibrating. Make sure to move around the room as much as possible during the calibration.

.. image:: images/webapp-new-room-3-calibrating-tag.png
  :width: 60%
  :align: center

Repeat this process with additional rooms, so the location algorithms can get an idea of your surroundings.

Adding a thing
--------------
The next step is to locate a nearby BLE device and add it as a *thing*. Tap the icon in the top right to see nearby devices:

.. image:: images/webapp-show-device-list.png
  :width: 60%
  :align: center

Tap the device you want to add, then give the device a name. This will tell the system you are interested in tracking that specific BLE device.

.. image:: images/webapp-new-thing.png
  :width: 60%
  :align: center

Tracking location
-----------------

The page will now show a list of things, as well as the locations (if they are in a calibrated room). Note that you can add any BLE device after calibrating, not just the device you have calibrated.

.. image:: images/webapp-showing-location.png
  :width: 60%
  :align: center
