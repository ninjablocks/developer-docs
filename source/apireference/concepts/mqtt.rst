MQTT
====

MQTT or *MQ Telemetry Transport* is a messaging protocol used heavily in the Ninja Sphere. MQTT is the protocol used to communicate between drivers and services.

For instance, the driver responsible for interfacing with the gesture control IC, ``sphere-gestic``, needs to publish when a specific gesture is detected. For example, assume ``sphere-gestic`` has detected a *swipe right* gesture, the following MQTT message will get published:

::

  $client/gesture/gesture Data:WestToEast

This message gets published with the following code in the driver:

::

  var msg = "WestToEast"
  this.publish(Ninja.topics.gestic.gesture, msg);

That's great, but this isn't very interesting until we actually *use* these gestures. On the other side, ``sphere-led-matrix`` is listening to ``$client/gesture/gesture`` for any new gestures.

::

  this.subscribe('$client/gesture/+', function(topic, data) {

    console.log('Got gesture', topic, data);

    // Slice out the last part of the topic, which tells us what type of gesture this was
    var event = topic.substring(topic.lastIndexOf('/')+1)

    if (event === 'airwheel') {
      // data is a number 0-255

    } else if (event === 'position') {
      // example data : {"xPosition":36084,"yPosition":3562,"zPosition":4808}

    } else if (event === 'gesture') {
      // data is 'EastToWest', 'WestToEast' etc.

      if (data === 'WestToEast') {
        this.panBy(-1);
      } else if (data === 'EastToWest') {
        this.panBy(1);
      }

    }

    // Send the gesture to the current pane, so that it can implement it's own UI.
    var pane = this.getActivePane();
    pane.emit(event, data);

  }.bind(this));


Note the subscription line: ``this.subscribe('$client/gesture/+', function(topic, data)``. The **+** indicates that we're interested in all topics published under ``$client/gesture``.

All Ninja drivers and apps should define which topics they publish in their ``package.json``. For example, sphere-gestic defines the following in its package.json:

::

  "topics": {
    "gestic": {
      "gesture": "$client/gesture/gesture",
      "airwheel": "$client/gesture/airwheel",
      "position": "$client/gesture/position",
      "touch": "$client/gesture/touch"
    }
  }

When creating new drivers, please be sure to add this to your ``package.json`` so other developers know what is being published.
