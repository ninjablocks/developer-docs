Sphere - Firmware Update
==============================

1. SSH into your sphere:

::

	ssh ninja@ninjasphere.local

2. Update to the latest Ninja Sphere release:

::

	apt-get update
	apt-get dist-upgrade

3. Download the following file:

::
	
	wget http://assets.sphere.ninja/downloads/ninja-sphere-tag-firmware-v0.0.2.bin


4. Find out the address of your Ninja Sphere BLE Tag:

::

	ble-tag-dump

The address that looks like "AA:BB:CC:DD:EE:FF" is the address of your tag. You will need this is the next step

5. Replace "AA:BB:CC:DD:EE:FF" with the address of your tag from Step 4


::

	ble-tag-oad AA:BB:CC:DD:EE:FF ninja-sphere-tag-firmware-v0.0.2.bin

Note that if anything goes wrong, you can safely terminate and re-run this command until the update completes successfully.

6. Your tag is now updated. 

Change Log

v0.0.2 will broadcast an advertising packet every 1 second, even when not in advertising mode. Pressing either button will enter a high-output calibration mode suitible for calibrating a room, which will last for 60 seconds, during which time an advertising packet will be generated every 100ms. The advertising mode can be extended by pressing either button again.

This release adds broadcasting of button press events over advertising packets, which will allow future Ninja Sphere client releases to respond to location-based contextual button presses.
