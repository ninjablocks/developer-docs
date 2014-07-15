Open Source
=========

Ninja Blocks is built on the shoulders of giants. Giants including Arduino, Node.js, and Linux. Naturally contributing back to the Open Source community is a no brainer. We’ve open sourced all our hardware designs, and many software libraries.

Open Source Hardware
---------

The Ninja Block is open source hardware. This means that we make the electronics schematics, bill of materials, software and even our enclosure designs publicly available so that anyone can study, modify, distribute, and make their own Ninja Blocks. So that anyone can make and use Ninja Blocks, we’ve tried where possible to use readily-available components, materials and tools that you would find at your local Hackerspace.

Electronics Designs
~~~~

We provide the designs for the Ninja Block’s in the community de facto standard of Eagle CAD. All our electronics designs are available in our public Github repositories:

	* `Ninja Blocks 1.0 Board <https://github.com/ninjablocks/hardware/tree/master/Ninja%20Blocks>`_
	* `Ninja Blocks 1.1 Board <https://github.com/ninjablocks/hardware/tree/master/Ninja%20Blocks%201.1>`_
	* `Ninja Blocks 1.2 Board <https://github.com/ninjablocks/hardware/tree/master/Ninja%20Blocks%201.2>`_
	* `Ninja Breakout Board Kit <https://github.com/ninjablocks/hardware/tree/master/Ninja%20Breakout%20Board>`_
	* `Ninja Sensors <https://github.com/ninjablocks/hardware/tree/master/Ninja%20Sensors>`_

Enclosure Designs
~~~~

We provide the designs for the Ninja Block’s enclosure as Sketchup and SVG and STL files. STL files can be used to get the Ninja Block case printed on 3D printers such as the MakerBot. SVG files can be used to cut the Ninja Block case on laser cutters. All our electronics designs are available in our public Github repository:

	* `Ninja Block 3D Printed Case <https://github.com/ninjablocks/case/tree/master/Ninja%20Block%203D%20Printed%20Case>`_
	* `Ninja Block Laser Cut Case <https://github.com/ninjablocks/case/tree/master/Ninja%20Block%20Laser%20Cut%20Case>`_
	* `3D Printed Sensor Cases <https://github.com/ninjablocks/case/tree/master/3D%20Printed%20Sensor%20Case>`_

Open Source Software
---------

Making a Ninja Block into a polished, hackable, product takes quite a few moving parts.

Ubuntu Linux
~~~~

We use Ubuntu Oneiric 11.10 as the operating system for the Ninja Block. The build we are using is made by Robert Nelson at `elinux.org <http://elinux.org/BeagleBoardUbuntu>`_. You can download this build from `here <http://elinux.org/BeagleBoardUbuntu#Method_1:_Download_a_Complete_Pre-Configured_Image>`_.

The USB Wi-Fi module we use is based on a Realtek Chip (rtl8192cu). We found the Realtek drivers included with the Ubuntu Oneiric 11.10 build a bit flakey so we compiled and open sourced our own. You can download the updated driver from our repository here:

	* `Realtek 0bda:8176 Wifi driver <https://github.com/ninjablocks/rtl8192cu>`_

Node.js
~~~~

The bulk of the software that we run on a Ninja Block is written in Node.js . We’ve split these into two open source repositories:

	* `Ninja Block Client <https://github.com/ninjablocks/client>`_ – the Node.js code that runs on the Beagle and sends and receives data to Ninja Cloud
	* `Utilities <https://github.com/ninjablocks/utilities>`_ – a set of helper apps for Ninja Blocks

Arduino
~~~~

Built into every Ninja Block is an Arduino that talks to sensors, actuators and our 433Mhz wireless modules. The code that we run on the Arduino is available here:

	* `Ninja Blocks Arduino Source Code <https://github.com/ninjablocks/arduino>`_