GET camera/:guid/snapshot
-------------------------

Request an image from the specified device. Returns a jpeg piped straight from the webcam.

Notes:
 * This call sends a command to the webcam device telling it to capture a still image. That image is then piped from the Ninja Block through to the agent of the request.
 * Given the reasonable complexity of actuating a webcam and streaming the response straight from the Ninja Block to the user agent, we cannot guarantee this call will always be successful.

.. code-block:: url

	GET https://stream.ninja.is/rest/v0/camera/:guid/snapshot

**Example**

.. code-block:: bash
	
	curl -i https://stream.ninja.is/rest/v0/camera/ASTEALTHYNODE01_0_0_1004/snapshot?user_access_token=YOUR_ACCESS_TOKEN

**Sample JSON Response**

.. code-block:: http
	
	HTTP/1.1 200 OK
	Cache-Control: no-store, no-cache, must-revalidate, pre-check=0, post-check=0, max-age=0
	Content-Type: image/jpeg
	Date: Tue, 18 Dec 2012 03:56:19 GMT
	Expires: Mon, 3 Jan 2000 12:34:56 GMT
	Pragma: no-cache
	Server: MJPG-Streamer/0.2
	transfer-encoding: chunked
	Connection: keep-alive

	[Binary content of snapshot]


