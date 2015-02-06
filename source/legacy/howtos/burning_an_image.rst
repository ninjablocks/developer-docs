Burning an Image
==================

.. image:: images/sd-adaptor.jpg
  :width: 150px
  :align: right

You will need:
  * 4GB (or larger) Micro-SD Card
  * SD to Micro-SD Card adaptor
  * Built in or external SD card reader
  * An image to burn - the file will end with ``.img.gz``

Insert the Micro-SD card into the SD card adaptor & insert it into your SD card reader.

Most recent laptops and desktop computers have an SD card slot, otherwise you will need an SD card reader.

The following instructions are different depending on which operating system you are running:

 * :ref:`burning-image-mac-os-x`
 * :ref:`burning-image-windows`

.. _burning-image-mac-os-x:

Mac OS X
----------


**1. Open a terminal window and type**

::

  diskutil list

You should see something like this:

.. image:: images/diskutil-list.png

Locate the disk that is most similar to the one highlighted in yellow. Specifically look for the items in orange (only applicable for overwriting an existing SD card - new SD cards will show a single Windows FAT partition). Take a note of the number of the disk that represents your SD card. In the example above it is ``disk1``. In the examples we will use ``diskX`` because we don't want anyone copying and pasting a command that destroys their computer!

After downloading the image, make sure your terminal window is in the same directory as where you downloaded the file, the OSX default download location is:

::

  cd ~/Downloads

**2. Unmount the disk**

Type the following replacing “X” with your disk's number.

::

  diskutil unmountDisk /dev/diskX

**3. Write the image onto the Micro SD card**

Type the following command, replacing ``<filename>`` with the name of your image, and replacing “X” with your disk's number from step 1:*

::

  cat <filename>.img.gz | gunzip | sudo dd bs=16m of=/dev/rdiskX

Type your OS X Password when prompted and then wait.

**Note:** You don't get any feedback until it is finished, and (depending on a lot of factors) this will take between 8 and 45min (usually around 12). Eventually you should see something like this:

.. image:: images/dd-result.png

**4. Unmount the disk again**

Type the following, replacing “X” with your disk's number:

::

  diskutil unmountDisk /dev/diskX

**5. Eject your Micro SD card and you are done!**

Congratulations you've just made a brand new Ninja SD card.

.. _burning-image-windows:

Windows
----


1. Download, un-compress and install Ubuntu's `Win32DiskImager <https://wiki.ubuntu.com/Win32DiskImager>`_ program; (Choose the current Win32diskimager-binary.zip file).

2. If you are reusing your existing Ninja Micro SD card, you may need to format the SD card first.

3. Run Win32DiskImager selecting the new Ninja image and the appropriate disk (ie Micro SD disk) like below. Click 'Write'.

  .. image:: images/windiskimager.png

4. A warning will appear click Yes after double checking you are writing to the right SD card. Depending on a lot of factors this will take between 8-45 mins (usually around 12).

  .. image:: images/windiskimager_confirm_overwrite.png

 Eventually you should see something like this:

  .. image:: images/windiskimager_complete.png

5. Click OK.

6. Eject your Micro SD card and you are done!

Congratulations you've just made a brand new Ninja SD card.
