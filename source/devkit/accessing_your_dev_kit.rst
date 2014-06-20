Accessing your developer kit
============================

**1. Try "ninjasphere"**

The first step in interacting with your developer kit is locating its IP address. In our image it should present itself on your network with the hostname of ``ninjasphere``. To test this, try:

::

  $ ping ninjasphere.local

If you get a response you can use that hostname in subsequent steps.

**2. Obtain its IP address from your router.**

Log onto the WEB UI of your router and look for the DHCP client list. The Dev Kit should have the hostname ``ninjasphere``.

SSH
---

You can ssh to your Dev Kit at ``ninjasphere``, or failing that by ssh'ing into its IP address that can be obtained from your router's DHCP client list (as above).

The default username is ``ninja`` and password is ``temppwd``

Software Updates
----------------

Your Dev Kit will automatically update daily in the early morning, but you can also force it at any time by running:

::

  sudo apt-get update && sudo apt-get dist-upgrade
