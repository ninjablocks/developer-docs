Authentication
==============

Quick Access
------------

To get you up and running quickly, we've built in a user access token, which you can enable (and revoke), in the `account settings page <https://a.ninja.is/hacking>`_. This API token will allow you full API access to your own account.

.. code-block:: url
	
	GET https://api.ninja.is/rest/v0/user?user_access_token=<access token>

In order to build an application that accesses another user's data, you will need to follow the steps in the OAuth 2 section below.

OAuth 2
-------

OAuth 2 is a protocol that allows third party applications access to a user's personal data securely. OAuth 2 is the only means by which a third party application can access another user's data via the Ninja Blocks platform.

All third party applications must be registed on the `settings page <https://a.ninja.is/hacking>`_ of your Ninja Blocks account, and are issued an ID and secret on registration. The client secret must not be shared.

**cURL tip:** JSON responses on the command line can be very hard to read. The simplest way is to get this `excellent json script <https://github.com/trentm/json>`_ and then add pipe to json at the end of your curl commands:

.. code-block:: bash

	curl .... | json

Slightly more work to install but well worth the effort if you regularly work with restful APIs is the python utility `HTTPie <https://github.com/jkbr/httpie>`_.

Third Party Application Flow
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Step 1 - retrieve an access code**

.. code-block:: url

	GET https://api.ninja.is/oauth/authorize

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	client_id         string      The client id provided after registration.
	redirect_uri      string      The URL that the user will be redirected to after 
	                              authorization. This MUST be exactly equal to the URL 
	                              provided when registering your application.
	scope             string      Comma seperated list of scopes. Currently Ninja Blocks
	                              only supports 'all'.
	response_type     string      Whether to use authorization code grant type or implicit
	                              grant type flow. Currently only authorization code is 
	                              supported, thus this variable MUST be ``code``.
	================= =========== ========================================================

**Step 2 - exchange your code for an access token**

If the user authorizes your application, Ninja Blocks redirects back to your application with a ``code`` parameter. This should be exchanged for an access token.

.. code-block:: url

	POST https://api.ninja.is/oauth/access_token

.. container:: ptable

	================= =========== ========================================================
	Parameter         Type        Description
	================= =========== ========================================================
	client_id         string      The client id provided after registration.
	redirect_uri      string      (optional)
	client_secret     string      The client secret received when you registered your
	                              application.
	code              string      The code your received in the previous step.
	grant_type        string      The OAuth grant type. Currently, only 
	                              ``authorization_code`` is supported.
	================= =========== ========================================================

The response will contain an ``access_token`` which must be used to access the authenticated user's data.

**Step 3 - access the API**

.. code-block:: url

	GET https://api.ninja.is/rest/v0/user?access_token=...