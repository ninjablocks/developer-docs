Logging and Messaging
=====================

Mosquitto
---------
mosquitto_sub is a simple MQTT version 3.1 client that will subscribe to a topic and print the messages that it receives.

	Subscribe to all messages:

	.. code-block:: bash

		mosquitto_sub -v -t '#'

	Subscribe to messages coming to/from devices:

	.. code-block:: bash

		mosquitto_sub -v -t '$device/#'


/var/log/ninja.log
------------------
ninja.log is used by Go code.  It is very useful to see what is going on in the system (all the drivers, client, HomeCloud etc.). This log is disabled by default.

	Enable ninja.log file by uncommenting "#/var/log/ninja.log" in the file below:
	
	.. code-block:: bash

		sudo with-rw nano /etc/rsyslog.d/10-ninja.conf


/var/log/ninjasphere.log
-------------------------
ninjasphere.log is used by Node code.  Director is currently the only node related application on the Sphere.  This will eventually be replaced by a Go version.
