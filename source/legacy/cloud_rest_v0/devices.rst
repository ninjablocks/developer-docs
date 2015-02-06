Devices
=======

Introduction
------------

In the Ninja API devices are the first class citizens not Blocks. Devices are logically separate sensors and/or actuators that have a Globally Unique Identifier ``GUID``, a Vendor ID ``V``, a Device ID ``D``, and a port ``G``. Most routes use GUIDs alone to address devices, the other fields will only matter to you if you are :doc:`creating devices </rest_v0/blocks>`. Ninja supplied hardware uses the convention ``SERIALNUMBER_G_V_D`` for GUIDs, which makes them easy to grok. See :doc:`Core Concepts </rest_v0/core_concepts>` for more information.

**A note on Auth**

For quick dev and hacking on your own account you can use your personal API Access Token found at `a.ninja.is/hacking <https://a.ninja.is/hacking>`_. The cURL Examples in this document use your ``user_access_token``. Note that when using the API with a token acquired via OAuth, the param is just ``access_token``. See the section on :doc:`authentication </rest_v0/authentication>` for more.

REST API Endpoints
------------------

.. toctree::
   :maxdepth: 1
   :glob:

   devices/get_*
   devices/post_*
   devices/put_*
   devices/*

