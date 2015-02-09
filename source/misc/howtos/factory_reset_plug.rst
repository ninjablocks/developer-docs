Factory Resetting a Ninja Smart Power Socket
==============================================


.. image:: images/socket.jpg


Step 1
~~~~~~~~~~~~~
Unplug your socket from the wall.

Step 2
~~~~~~~~~~~~~
Using a pen or something pointy, push the "reset" button on the right hand side of the socket. With the reset button still pressed, plug the socket back into the wall.

Step 3
~~~~~~~~~~~~~
Stop pressing the button and remove the plug fom the wall. Wait a moment, then plug back in. Your socket has now been factory reset.

Step 4
~~~~~~~~~~~~~
Visit http://ninjasphere.local/#/things and your socket should show up. Alternatively, run the following on your sphere to see the logs:

::

tail -f /var/log/ninjasphere.log

Troubleshooting
~~~~~~~~~~~~~
It didn't work! Now what?

* Make sure you've allowed some time for the socket to power down after unplugging. You can tell when its ready to plug in when the LEDs have fully discharged.
