.. highlight:: javascript

Writing Sphere Applications
=======================

.. note:: This section of the documentation is under construction.

Getting Started
---------
Sphere applications are small pieces of logic designed to accomplish high level tasks. They will interact with things like lights, refidgerators, heaters, etc and have little exposure to the underlying devices.


Examples
---------

Example 1. Listening for changes in a person's location
~~~~~~~~~~~~~

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.byType('person').on('location', function(location, channel, person) {
    log.info('Got location', location, 'for person', person);
  });

Alternate synxtax:

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things({type:'person'}).then(function(people) {
    log.info('Found locatable people', people);
    // Event listeners can be applied to a collection of things.
    people.on('location', function(location, channel, person) {
      log.info('Got location', location, 'for person', person);
    });
  });

Example 2. Listening to the start button of an XBOX 360 Controller
~~~~~~~~~~~~~

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.withChannel('button', {name:'start'}).each(function(thing) {
    log.info('Found a thing with a start button', thing);
    thing.on('button', function(pressed, channel, thing) {
      if (pressed && channel == 'start') {
        log.info('Start button pressed on', thing);
      }
    });

  });

Example 3. Listen to the on-off state of a refridgerator in the kitchen
~~~~~~~~~~~~~

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.rooms.byName('Kitchen').each(function(kitchen) {
    log.info('Found the kitchen', kitchen);
    kitchen.things.byType('refridgerator').on('on-off', function(state, channel, fridge) {
      if (!state) {
        log.warn('The fridge has been turned off!', fridge);
      }
    });
  });

Example 4. Listen to the on-off state of anything in the house
~~~~~~~~~~~~~

::

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.then(function(things) {
    things.on('on-off', function(state, channel, thing) {
    if (state) {
      log.info('Something has been turned on (and it wasn\'t your mum this time)', thing, 'in room', thing.room);
    }
    });
  });