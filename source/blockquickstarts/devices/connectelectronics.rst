..  _connectelectronics:

Connecting Electronics
=========

In this quickstart you will learn how to interface electronics to your Ninja Block via a Device.

Recall that in `Write a Device <writeadevice>`_ you learned how a driver (and therefore Device) may operate from a number of different contexts. Bear this in mind in relation to the connection of electronics to your Ninja Block. Here are some possible contexts:

	1. You use the Ninja Block’s connection to its Arduino cape to control GPIO there.

	2. You connect an Ethernet-enabled Arduino to the Ninja Platform. See `here <https://www.youtube.com/watch?v=_ByLQe4I5gQ>`_ for more about this method.

	3. You run the Ninja Blocks client on the RPi and use its GPIO functions to control electronics.

The context that applies to your situation will determine the exact implementation you’ll perform. For example, if you’re working with an Ethernet-enabled Arduino, you’ll program in C/C++ and use statements such as digitalWrite and digitalRead to interface with your electronics.

Congratulations, you are now a Ninja of the highest order. Thanks for taking the time to train with us.

*Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!*