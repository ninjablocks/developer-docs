Enable SSH
==========

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