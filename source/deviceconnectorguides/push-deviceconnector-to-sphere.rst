Push Device Connector To Sphere
================================

1. Create a new directory in /data/sphere/user-autostart/drivers/ for your driver
::

	mkdir -p /data/sphere/user-autostart/drivers/driver-foobar

3. Directory name, binary name, and json files should all be the same
4. Below are example file names for a new drive called driver-foobar

::

	Directory: driver-foobar
	Binary: driver-foobar
	JSON: package.json

5. Build for ARM and SCP your binary and package.json files to the new driver directory
::

	GOARCH=arm GOOS=linux go build
	scp driver-foobar ninja@ninjasphere.local:/data/sphere/user-autostart/drivers/driver-foobar/driver-foobar
	scp package.json ninja@ninjasphere.local:/data/sphere/user-autostart/drivers/driver-foobar/package.json

6. Reboot the Sphere or run the following command to start the new driver
::

	nservice driver-foobar start