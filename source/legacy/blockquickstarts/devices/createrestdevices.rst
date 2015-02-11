..  _createrestdevices:

Create REST devices
=========

In this quickstart you will learn how to use RESTful devices. If you have web development skills you can apply them here. REST devices can be sensors or actuators. REST sensors use URLs provided by the Ninja Blocks Platform, and REST actuators use URLs provided by you.

Create a RESTful sensor
---------

Step One: Enable Webhooks
~~~~

Log in to your Ninja account and go to Settings: Services. If you’re already logged in you can go `straight there <https://a.ninja.is/you>`_.

Enable the ‘Webhook’ service

Go to your Dashboard and you should see a new ‘Webhook’ widget.

Step Two: Create a Sensor Webhook
~~~~

On your Ninja Dashboard, find the Webhook widget and choose ‘Add a Webhook’. Ensure ‘Inbound Webhook (Sensor)’ is selected. (If you don’t see a Webhook widget, ensure you’ve followed the step above.)

Name the Webhook, and choose ‘Save’.

Click your newly Webhook within the Webhook widget. Copy the URL that is generated. When this URI is POSTed to, the Ninja Platform will register this as an activation of your sensor.

Step Three: Write a simple Rule that highlights the activation of your Sensor.
~~~~

Any Rule will do here- you could simply change the colour of Nina’s eyes. See `Making all the Rules <https://www.youtube.com/watch?v=Fs17-O8nmp8>`_ if you need help doing this.

Step Four: Test this Webhook
~~~~

Use cURL to POST to the URI.

::

	curl -d "" URI

Ensure that your Rule has been triggered. You can use the ‘Stream’ function to do this easily.

Additional Coolness:
~~~~

For the purposes of this quickstart we’ve created a sensor webhook that you can use to show us that you’ve done this quickstart. Just POST to it and your interest will be counted!

::

	curl -d "" https://api.ninja.is/rest/v0/device/WEBHOOK_0_0_108/subdevice/5aIf0/tickle/ud3hitChgmBJmv4XcC9Uwr2g0E2xx2zBI7vbC7gLY

Create a RESTful actuator
--------

Step One: Enable Webhooks
~~~~

Log in to your Ninja account and go to Settings: Services.

Enable the ‘Webhook’ service

Go to your Dashboard and you should see a new ‘Webhook’ widget.

Step Two: Create an Actuator Webhook
~~~~

On your Ninja Dashboard, choose ‘Add Webhook’. Ensure ‘Outbound Webhook (Actuator)’ is selected.

Name the Webhook, and provide a URI. This URI will be POST-ed to when you choose to actuate your actuator.

Step Three: Create a Rule that actuates your actuator.
~~~~

See `Making all the Rules <https://www.youtube.com/watch?v=Fs17-O8nmp8>`_ if you need help doing this.

Step Four: Test your Webhook
~~~~

Trigger your Rule and you should receive a POST to the URI you provided for this Webhook.

Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!
