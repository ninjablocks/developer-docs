Push App to Sphere
==================

1. Create a new directory in /data/sphere/user-autostart/apps/ for your application

.. code-block:: bash

	mkdir -p /data/sphere/user-autostart/apps/app-foobar

2. The directory name and binary name should have the same name. package.json contains some metadata about the application.

::

	Directory: app-foobar
	Binary: app-foobar
	JSON: package.json

3. On your development machine, build the app for ARM and then copy (SCP) your binary and package.json files to the new app directory.

.. code-block:: bash

	GOARCH=arm GOOS=linux go build
	scp app-foobar ninja@ninjasphere.local:/data/sphere/user-autostart/apps/app-foobar/app-foobar
	scp package.json ninja@ninjasphere.local:/data/sphere/user-autostart/apps/app-foobar/package.json

	
4. Reboot the Sphere or run the following command to start the new application

.. code-block:: bash

	nservice app-foobar start