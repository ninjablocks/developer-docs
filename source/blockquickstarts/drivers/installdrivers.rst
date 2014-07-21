..  _installdrivers:

Install Drivers
=========

In this quickstart you’ll learn how to install pre-existing drivers. These can be obtained from github repositories, for example.

Overview
---------

It’s important to understand the correct directory structure for driver development. Drivers reside in client/drivers. Inside this directory we should find one directory per driver. Take a moment to examine the structure of the Drivers you find there. In most cases, (in addition to package.json and other support files) you will find an index.js and a lib/device.js file.

Step One: Obtain the driver you wish to install
~~~~

Here are some sample drivers you can try:

* `XBMC Driver <https://github.com/elliots/ninja-xbmc>`_
* `Report CPU usge <https://github.com/wandergeek/linux-cpu>`_
* `Mac iSight Driver <https://github.com/nexxy/ninja-isight>`_
* `Controlling Philips Hue <https://github.com/thatguydan/ninja-hue>`_
* `Wifi Scanner that reports analytics about nearby wifi devices <https://github.com/faulkner/ninja-wifi-scanner>`_

As you’ll see, they are github repositories. Follow the links and obtain the URL for the driver you’re interested in. (You can download the code as a ZIP archive if you prefer- just ensure that the directory that contains the driver code ends up in the ‘client/drivers’ directory.)

Step Two: Place the Driver code in the correct location.
~~~~

::

	cd client/drivers
	git clone github-repo-url

Step Three: Restart the client
~~~~

::

	sudo service ninjablock restart

Step Four: Examine your Dashboard.
~~~~

Depending on the nature of the driver you installed, you may see a Widget on your Dashboard that represents the functionality of the driver.

*Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!*