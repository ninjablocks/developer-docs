Push Device Driver To Sphere
============================

1. On the Spheramid: create a new directory in /data/sphere/user-autostart/drivers/ for your driver
::

	mkdir -p /data/sphere/user-autostart/drivers/driver-foobar

2. Make sure your directory name and binary file name are the same.
Below are example file names for a new driver called driver-foobar

::

	Directory: driver-foobar
	Binary: driver-foobar
	JSON: package.json

3. In your development environment: build for ARM, then copy (SCP) your binary and package.json files to the new driver directory
::

	GOARCH=arm GOOS=linux go build
	scp driver-foobar ninja@ninjasphere.local:/data/sphere/user-autostart/drivers/driver-foobar/driver-foobar
	scp package.json ninja@ninjasphere.local:/data/sphere/user-autostart/drivers/driver-foobar/package.json

4. Reboot the Sphere or run the following command to start the new driver
::

	nservice driver-foobar start

