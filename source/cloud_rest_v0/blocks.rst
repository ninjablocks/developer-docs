Blocks
======

Virtual Block Token
-------------------

To get you up and running quickly, we provide a virtual block token, which you can enable (and revoke), in the `account settings page <https://a.ninja.is/hacking>`_. This block token will allow you to create arbitrary devices under your account without activating or claiming.

Use your virtual block token exactly as you would a standard block token, i.e. pass it as an http header named X-Ninja-Token.

Block Activation Explained
--------------------------

Claiming/activating a block is the process of retrieving a token for a given block (identified by its node ID) that is used to link that block to a particular user.

There are two flows to block activation. First, you can request a token with user credentials. This is useful for browsers and other apps that already have a user's authorization.

The second involves a two-legged flow where a block requests a token and awaits activation (HTTP GET, does not require user authorization) and a user separately attempts to claim that block awaiting activation (HTTP POST, does require authorization). For example an Arduino might request activation, and a user then 'claims' that block via his/her browser/smartphone. The token is sent down the wire to the Arduino which then uses it in all subsequent requests.

For more information see `block activation </rest_v0/blocks/activate>`_.

REST API Endpoints
------------------

.. toctree::
   :maxdepth: 1
   :glob:

   blocks/get_*
   blocks/post_*
   blocks/*
