OnOff
===========

**Methods**

OnOff.turnOn(cb, cb.err, cb.result)
-----------------------------------

Turns the device on

**Parameters**

**cb**: *Function*, The callback function

**cb.err**: *NinjaError*, The error object

**cb.result**: *undefined*, The new state

OnOff.turnOff(cb, cb.err, cb.result)
------------------------------------

Turns the device off

**Parameters**

**cb**: *Function*, The callback function

**cb.err**: *NinjaError*, The error object

**cb.result**: *undefined*, The new state

OnOff.setOnOff(state, cb, cb.err, cb.result)
--------------------------------------------

Turns the device on or off

**Parameters**

**state**: *boolean*,

**cb**: *Function*, The callback function

**cb.err**: *NinjaError*, The error object

**cb.result**: *undefined*, The new state

OnOff.toggleOnOff(cb, cb.err, cb.result)
----------------------------------------

Toggles the on/off state

**Parameters**

**cb**: *Function*, The callback function

**cb.err**: *NinjaError*, The error object

**cb.result**: *undefined*, The new state
