Protocol
========

A *Protocol* has a service and a state, each of which is defined by a `Schema <http://json-schema.org/>`_.  A service defines which methods need to be implemented by the :doc:`channel` . A state is simply a list of properties.

For example, the `message-display` protocol is displayed below.

::

  {
    "$schema": "http://ninjablocks.com/schema/protocol",
    "id": "http://ninjablocks.com/schemas/protocol/message-display",
    "service": {
      "topic": "/device/:deviceId/channel/:channelId/message-display",
      "methods": {

        "showMessage": {
          "description": "Display a message",
          "params": [
            { "$ref": "http://ninjablocks.com/schema/state/message#" },
            {
              "description": "The time to display the message in milliseconds. 0 = forever",
              "type": "number",
              "default": 5000
            }
          ]
        }

      }
    },
    "state": { "$ref": "http://ninjablocks.com/schema/state/message#" }
  }

From the above, we can see that the ``message-display`` protocol needs to implement the ``showMessage`` method, its MQTT topic (and REST endpoint) is ``/device/:deviceId/channel/:channelId/message-display``, and its state is defined by ``http://ninjablocks.com/schema/state/message``.

The ``message-display`` state is shown below.

::

  {
      "id": "http://ninjablocks.com/schema/state/message",
      "$schema": "http://json-schema.org/draft-04/schema#",
      "title": "Message to be displayed",
      "type": "object",
      "properties": {
          "message": {
            "description": "The message to display",
            "type": "string"
          },
          "title": {
            "description": "The title",
            "type": "string"
          },
          "image": {
            "description": "The image (url) to display with the message. Data URIs are not supported.",
            "type": "string",
            "format": "uri"
          }
      },
      "required": ["message"]
  }
