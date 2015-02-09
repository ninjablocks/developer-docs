Push App to Sphere
==============================

1. Create a new directory in /data/sphere/user-autostart/apps/ for your application
::

	mkdir -p /data/sphere/user-autostart/apps/app-go-foobar

2. Directory name, binary name, and json files should all be the same
::

	Directory: app-go-foobar
	Binary: app-go-foobar
	JSON: app-go-foobar.json

3. Build for ARM and SCP your binary and package.json files to the new app directory
::

	GOARCH=arm GOOS=linux go build
	scp app-go-foobar ninja@ninjasphere.local:/data/sphere/user-autostart/apps/app-go-foobar/app-go-foobar
	scp package.json ninja@ninjasphere.local:/data/sphere/user-autostart/apps/app-go-foobar/package.json

	
4. Reboot the Sphere or run the following command to start the new application
::

	nservice app-go-foobar start