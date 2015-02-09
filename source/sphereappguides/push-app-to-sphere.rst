Push App to Sphere
==================

1. Create a new directory in /data/sphere/user-autostart/apps/ for your application
::

	mkdir -p /data/sphere/user-autostart/apps/app-foobar

2. Directory name and binary name should have the same name. package.json contains some metadata about the application.
::

	Directory: app-foobar
	Binary: app-foobar
	JSON: package.json

3. Build for ARM and SCP your binary and package.json files to the new app directory
::

	GOARCH=arm GOOS=linux go build
	scp app-foobar ninja@ninjasphere.local:/data/sphere/user-autostart/apps/app-foobar/app-foobar
	scp package.json ninja@ninjasphere.local:/data/sphere/user-autostart/apps/app-foobar/package.json

	
4. Reboot the Sphere or run the following command to start the new application
::

	nservice app-foobar start