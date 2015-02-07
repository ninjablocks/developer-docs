Push Device Connector To Sphere
================================

1. Create a new directory in /data/sphere/user-autostart/drivers/ for your driver
::

	mkdir -p /data/sphere/user-autostart/drivers/driver-go-foobar

3. Directory name, binary name, and json files should all be the same
4. Below are example file names for a new drive called driver-go-foobar

::

	Directory: driver-go-foobar
	Binary: driver-go-foobar
	JSON: driver-go-foobar.json

5. Build for ARM and SCP your binary and package.json files to the new driver directory
::

	GOARCH=arm GOOS=linux go build
	scp driver-go-foobar ninja@ninjasphere.local:/data/sphere/user-autostart/drivers/driver-go-foobar
	scp {{local_folder}}/package.json ninja@ninjasphere.local:/data/sphere/user-autostart/drivers/driver-go-foobar/package.json

