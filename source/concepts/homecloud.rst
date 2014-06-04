HomeCloud
=========

*HomeCloud* is basically a smaller, single-user version of some of the services available in the Ninja Cloud. Only one home-cloud is ever running per home.

Local Rules Engine
------------------

Provides a subset of the rules available in the cloud. All rules are provided by the cloud, but can be run offline. When possible all rule fires are reported to the cloud, and are queued otherwise. Device data should be accessed via the rest api to keep the routing, caching, retry-logic etc in one place.

REST API
--------

Provides access to any devices available via local nodes, as well as any that must be actuated via the cloud. Device data for roaming devices will be pushed from the cloud, and all data from local devices can be cached indefinitely.

Cloud Router
------------

Maintains a connection to the cloud. Handles the encryption, retries etc. Announces connection status to the other components.

App Manager
------------

Starts and monitors any enabled Applications using The Director.

Driver Manager
--------------

Starts/stops/monitors any enabled drivers across connected nodes. Any drivers that must be run on all nodes (e.g. BLE) are started on all, and the others are split between the nodes to save memory. It must track nodes appearing/disappearing so it can re-allocate drivers.

Application
-----------

An application is similar to a driver, except that it deals with Things rather than Devices. It has access to data provided by other apps (such as Location) and can update and create Things. It has access to a key-value store.

Home Cloud Router
-----------------

Responsible for connecting the drivers to the home cloud. In addition, it has *The Conch* which tracks and decides which local node is going to be the master (and so, run the Home Cloud).
