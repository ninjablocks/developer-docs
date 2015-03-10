Resetting a Ninja Sphere Devkit
===============================
These instructions document how to reset a Ninja Sphere devkit with the latest factory image.

There are three major steps that need to be performed.

* Reflash the NAND
* Reimage the Ninja Sphere Devkit SD card
* Pair the Ninja Sphere Devkit to your Ninja Blocks user account.


Reflash the NAND
----------------
The current version of the Ninja Sphere Devkit runtime uses a 3.12 kernel. Earlier versions of the bootloader stored in the Ninja Sphere Devkit NAND cannot load 3.12 kernels. For this reason, before updating the SD card with the current version of the Ninja Sphere Devkit runtime, it is first necessary to update the devkit NAND with a bootloader which is compatible with a 3.12 kernel.

This step only needs to be done the first time you are resetting the devkit with a 3.12 runtime. Once this step has been successfully completed once, it does not need to be repeated again unless otherwise advised by Ninja Blocks support staff.

Steps
~~~~~
1. Download the Ninja Sphere NAND image (https://firmware.sphere.ninja/latest/ninja-var-am335x-v1.0.19-e0530dcf.img.gz). The expected sha1 of the file is listed in the associated SHA1 file (https://firmware.sphere.ninja/latest/ninja-var-am335x-v1.0.19-e0530dcf.img.gz.sha1).
2. Using the image, re-image a micro SD card that has at least 3GB of capacity using the steps in  "Burning an Image" (https://developers.ninja/misc/howtos/burning_an_image.html). If you like, you can use the same SD card that will eventually be used to store the Ninja Sphere Devkit runtime.
3. Remove the power cable from the Ninja Sphere Devkit
4. Install the micro SD card into the micro SD card reader on the Ninja Sphere Devkit
5. Reconnect the power cable to the Ninja Sphere Devkit
6. Wait for 3-4 minutes until the Ninja Sphere Devkit LEDs display green or red. If the Ninja Sphere Devkit LED displays red, contact Ninja Blocks support.
7. Remove the power cable from the Ninja Sphere Devkit.
8. Remove the micro SD card from the SD card reader on the Ninja Sphere Devkit. This step is necessary to prevent the reflashing process from automatically starting again if you accidentally reapply power to the devkit.

Assuming that the devkit LEDs displayed green at step 6, the NAND has now been successfully reflashed with a bootloader that is compatible with the current 3.12 kernels.

Reimage the Ninja Sphere Devkit SD card
---------------------------------------
These steps will re-image your SD card with a new version of the Ninja Sphere Devkit runtime. If you like, you can re-use the SD card that you used for the "Reflash the devkit NAND" step.

Steps
~~~~~

* These instructions are current as of 2015-03-10 06:00:00 UTC.

1. Download the Ninja Sphere Devkit factory image (https://firmware.sphere.ninja/latest/ubuntu_armhf_trusty_norelease_devkit-stable.img.gz). The expected sha1 of the file is listed in the manifest (https://firmware.sphere.ninja/latest/ubuntu_armhf_trusty_norelease_devkit-stable.manifest).
2. Using the image, re-image a micro SD card that has at least 3GB of capacity using the steps in "Burning an Image" (See - https://developers.ninja/misc/howtos/burning_an_image.html)
3. Remove the power cable from the devkit
4. Install the micro SD card into the micro SD card reader on the devkit
5. Reconnect the power cable to the devkit

Pair the Ninja Sphere Devkit to your Ninja Blocks user account
--------------------------------------------------------------
At this point the devkit should boot with an adhoc WiFi network called NinjaSphere-xxxxxxxx where xxxxxxxx is a pseudo-random string of hexadecimal digits.

Steps
~~~~~
1. Start the Ninja Sphere phone app and ensure that the phone app is signed in with a valid Ninja Blocks account
2. In the phone app, click "Add things" and select "Spheramid" from the list of options to advance to the "WELCOME - Tap the sphere below to begin setup" screen
3. Tap the sphere in the center of the screen to advance to the "SPHERAMID - We're looking for your spheramid" screen
4. Tap the sphere in the center of the screen 8 times until the "ADHOC PAIRING" button appears at the bottom of the screen.
5. Select the "ADHOC PAIRING" button to advance to the next screen. Follow the instructions displayed on that screen.
6. Resume the phone application and select "Continue" from the "SPHERAMID SETUP" screen

The devkit will eventually prompt for the WiFi credentials of your main WiFi network. Once these credentials are entered, the devkit will download necessary updates from the Internet. This process may take up to 15 minutes at which point the devkit will be paired with your Ninja Blocks account.

If the devkit is the only 'sphere' connected to the your Ninja Block account (e.g. it is effectively the "master" 'sphere'), the devkit LED will turn green once pairing is complete. Otherwise, it will turn blue.

Restarting the pairing process
------------------------------
If the devkit fails to pair for some reason, or if the devkit loses connectivity to the Internet, then the devkit LED will continue to flash red. If the pairing process does not complete successfully or you want to re-pair the devkit to a different Ninja Blocks account, then logon to the devkit across a serial connection to its mini-USB port using a PC terminal console program like PuTTY (Windows) or screen (Linux and OSX).

Once you have logged in to the ninja account, type the following command:

	sudo with-rw /opt/ninjablocks/bin/sphere-reset --reset-setup &&	sudo reboot

This command will reset your devkit into an unpaired state, allowing you to repeat the pairing process again.
