Hardware Setup
====

Aerial
----
The first step in assembling your dev kit is attaching the 2.4 GHz aerial to the main system-on-module card. Remove the system-on-module card (SOM) from the socket and then press the U.FL connector on the supplied aerial onto the socket located at ANT1 on the SOM (it is located on the same plane as the USB connector but on the opposite side of the Dev Kit). Once the aerial is connected, place the SOM back into the socket.

.. image:: images/Antenna-Installation.png
  :width: 60%
  :align: center

Burn the image
----

The latest developer kit image can be downloaded from: `ubuntu_armhf_trusty_norelease_devkit-testing-2014-06-02_1915.img.gz <http://ninjablocks-nightly.s3.amazonaws.com/devkit/ubuntu_armhf_trusty_norelease_devkit-testing-2014-06-02_1915.img.gz>`_


For a guide on how to burn this image to the supplied SD card, check out the :doc:`/howtos/burning_an_image` how-to.

Once you have burnt the image to your SD card, insert the burnt SD card into the developer kit.


Network and Power
----

Plug in an ethernet connector and then a power supply into the Dev Kit. The LED lights on the top of your Dev Kit will currently only light up during pairing, so don't worry if they don't light up.

Waypoints
----

Your waypoints are the 2 usb-key looking devices. Plug them into any always-on USB port on opposite sides of your house to the Dev Kit. Ideally your Dev Kit and aerials will be located in different rooms, and would form a triangle if viewed from a satellite.
