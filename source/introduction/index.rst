Developing on Your Sphere
=========================

Enable SSH
~~~~~~~~~~

1.  Connect to your sphere using USB

.. code-block:: bash

	# OS X
	screen /dev/cu.usbmodem*
	# Linux
	screen /dev/ttyACM0

2.  Use default username and password
::
	username: ninja
	password: temppwd

3.  Install ssh for easier access
::

  sudo with-rw bash && bash -c "apt-get update; apt-get install -y openssh-server"


Confirm Directory Structure
~~~~~~~~~~~~~~~~~~~~~~~~~~~

1.  Connect to your sphere using USB or SSH

2.  Depending on your Sphere version you may need run the following commands to create folders for custom drivers and applications

::

	mkdir -p /data/sphere/user-autostart/{drivers,apps} && chown -R ninja.ninja /data/sphere


Your Sphere is now configured and you can load custom applications

