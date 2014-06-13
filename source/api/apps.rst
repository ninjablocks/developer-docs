Applications
=========

.. js:class:: Ninja.Sphere

  The main Sphere API object. 

.. note:: The Ninja.Sphere object is not syncronous, and instead is similar to promises in that the query is built via a series of chained functions and finally executed once the promise has resolved.

For Example:

.. code-block:: javascript

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.byType('person').on('location', function(location, channel, person) {
    log.info('Got location', location, 'for person', person);
  });

``things`` accessor
----------

.. js:function:: .things( [ filter ] )

  :param object filter: An object with a filter

.. code-block:: javascript

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.then(function(things) {
    // Do something with every thing
  });

  // OR...

  Ninja.Sphere.things({type:'person',name:'Daniel'}).then(function(people) {
    // Hi Dan
  });

.. js:function:: .byType( type )

  :param string filter: The Thing type to filter by

.. code-block:: javascript

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.byType('light').then(function(lights) {
    // Do something with every light
  });

.. js:function:: .on( event , cb )

  :param string event: Event to listen for
  :param function cb: Callback that is fired when the event is emitted

.. code-block:: javascript

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.byType('person').on('location', function(location, channel, person) {
    // Got `person` in `location`
  });

.. js:function:: .each( iterator )

  :param function iterator: A function called with each `thing` passed into it


.. code-block:: javascript

  var Ninja = require('ninja-sphere');

  Ninja.Sphere.things.byType('person').on('location', function(location, channel, person) {
    // Got `person` in `location`
  });



.. js:function:: .withChannel( protocol[ , filter ] )

  :param string protocol: Event to listen for
  :param function cb: Callback that is fired when the event is emitted

.. js:function:: .then( fn )

  :param function iterator: A function called with each `thing` passed into it
