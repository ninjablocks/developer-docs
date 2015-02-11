..  _authenticate:

Authenticate
=========

See :ref:`Prerequisites <prerequisites>` if you haven’t installed the prerequisites for the quickstarts.

Overview
---------

The goal of this quickstart is to demonstrate how to correctly handle authentication within your app. Note that this is distinct from authenticating on your own Ninja Block. This quickstart focuses on what third party apps must do in order to authenticate against User’s Ninja Blocks.

Step 1 - retrieve an access code
~~~~

::

	GET https://api.ninja.is/oauth/authorize

Parameters

* **client_id** - string - Required - The client id provided after registration.
* **redirect_uri** - string - Required - The URL that the user will be redirected to after authorization. This MUST be exactly equal to the URL provided when registering your application.
* **scope** - string - Required - Comma seperated list of scopes. Currently Ninja Blocks only supports ‘all’. response_type string Required Whether to use authorization code grant type or implicit grant type flow. Currently only authorization code is supported, thus this variable MUST be code.

Step 2 - exchange your code for an access token
~~~~

If the user authorizes your application, Ninja Blocks redirects back to your application with a code parameter. This should be exchanged for an access token.

::

	POST https://api.ninja.is/oauth/access_token 

Parameters

* **client_id** - string - Required - The client id provided after registration.
* **redirect_uri** - string - Optional
* **client_secret** - string - Required - The client secret received when you registered your application.
* **code** - string - Required - The code your received in the previous step. grant_type string Required The OAuth grant type. Currently, only authorization_code is supported. The response will contain an access_token which must be used to access the authenticated user’s data.

Step 3 - access the API
~~~~

::

	GET https://api.ninja.is/rest/v0/user?access_token=…

*Note that these quickstarts are currently under daily active development and as such are incomplete in places. You'll know this by the presence of a 'TODO' :) Thanks for your patience!*