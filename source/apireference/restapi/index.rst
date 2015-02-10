Sphere REST API
===============

The REST API is largely the same between the Ninja Sphere Cloud and HomeCloud, running locally on your device. Details that differ between the two endpoints primarily relate to authentication.

Authentication
--------------

When accessing the Sphere cloud, access to most endpoints is restricted to using an access token and **not a cookie-based session**. An access token can either be an valid OAuth 2 token or a JWT session token retrieved from `/rest/v1/auth/session_token`, and either can be provided through an `Authorization: Bearer <token>` header or through an `access_token=XYZ` query string value.

An important distinction between the authentication on the original Ninja Blocks platform and the Sphere platform is that authentication is now standardised between client devices, mobile applications and apps running in the cloud. All types of authentication support, and indeed use, an OAuth 2 token. Cloud MQTT authentication is also performed using an OAuth 2 token. The only exception to this is the Cloud REST API which supports the JWT signed session token as well.

Never rely on the contents or signing properties of the JWT session tokens, and they may change without notice in future. JWT session tokens are only valid for a short period - most of the time, you want to use an OAuth 2 token.

When accessing the local HomeCloud REST API on the a Spheramid or Dev Kit, currently authentication is not required, so your LAN must be trusted. This will change imminently to require the local site security key as a Bearer token.

Endpoints
---------

The public Sphere cloud is based at: ``https://api.sphere.ninja/rest/v1``

HomeCloud is available on your primary device at: ``http://ninjasphere.local/rest/v1``

Auth
----

 * ``GET /auth/session_token`` - retrieve a JWT session token from a browser session *(cloud only)*

User
----

 * ``GET /user`` - retrieve some information about the authenticated user
 * ``GET /user/configuration`` - retrieve configuration for the environment, such as identity and mqtt endpoints

Rooms
-----

 * ``GET /rooms`` - list all rooms associated with the account
 * ``GET /rooms/:roomId`` - retrieve a specific room
 * ``PUT /rooms/:roomId`` - update an existing room *(currently local only)*
 * ``POST /rooms`` - create a new room *(currently local only)*
 * ``DELETE /rooms/:roomId`` - delete a room *(currently local only)*

Sites
-----

 * ``GET /sites`` - list all sites associated with the account
 * ``GET /sites/:siteId`` - retrieve a specific site
 * ``PUT /sites/:siteId`` - update an existing site *(currently local only)*
 * ``POST /sites`` - create a new site *(currently local only)*
 * ``DELETE /sites/:siteId`` - delete a site *(currently local only)*

Things
------

 * ``GET /things`` - list all things associated with the account
 * ``GET /things/:thingId`` - retrieve a specific thing
 * ``PUT /things/:thingId`` - update an existing thing *(currently local only)*
 * ``POST /things`` - create a new thing *(currently local only)*
 * ``DELETE /things/:thingId`` - delete a thing *(currently local only)*

MQTT
----

 * ``POST /mqtt?topic=$cloud/topic`` - payload of the data to inject to the MQTT bus on the specified topic *(cloud only, may change without notice)*