POST camera/:guid/snapshot
--------------------------

Send an image that has been requested via a 'snapshot' command. The request body should contain the binary of the image, with the correct mime type in the headers

This request should only be made when a 'DA' value of 1 is received by the device.

**Note:** The header ``X-Ninja-Token`` is required in the headers of this request, and corresponds to the token acquired via the GET block/:nodeId/activate route.

**Note: this call is to stream.ninja.is.**

.. code-block:: url

	GET https://stream.ninja.is/rest/v0/camera/:guid/snapshot