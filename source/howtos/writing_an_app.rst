.. highlight:: javascript

Writing Sphere Applications
=======================

.. note:: This section of the documentation is under construction.

Getting Started
---------
Sphere applications are small pieces of logic designed to accomplish high level tasks. They will interact with things like lights, refidgerators, heaters, etc and have little exposure to the underlying devices.

The first thing you will need to do is 

::

  npm install ninja-sphere

Then create an file with one of the examples found at the bottom of this page in the same directory.


Examples
---------

Example 1. Listening for changes in a person's location
~~~~~~~~~~~~~

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.byType('person').on('location', function(location, channel, person) {
    console.log('Got location', location, 'for person', person);
  });

Example 2. Listen to the on-off state of anything in the house
~~~~~~~~~~~~~

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.each(function(thing) {

    thing.on('on-off', function(state, channel, thing) {
      console.log(thing.type,thing.name,'was turned',state?'on':'off');
    });
  });
  
Example 3. Toggle all the things in NinjaHQ on then off again every 5s
~~~~~~~~~~~~~

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.rooms({name:'NinjaHQ'}).things().each(function(thing) {

    setInterval(function(){
    	thing.toggleOnOff()
    },5000)
  });
