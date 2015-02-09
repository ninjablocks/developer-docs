.. _apireference_service_webhooks:

webhooks
========

Ninja Sphere - WebHook service

.. _apireference_service_webhooks_methods:

Methods
-------

.. _apireference_service_webhooks_methods_add:

add(webhook)
~~~~~~~~~~~~

Creates a new web hook

**Parameters**

**webhook** :ref:`webhook <apireference_service_webhooks>`

**Return Value**

:ref:`common.ninja-id <apireference_common>` 

.. _apireference_service_webhooks_definitions:

Definitions
-----------

.. _apireference_service_webhooks_definitions_webhook:

webhook
~~~~~~~

*object* Most properties will allow token replacements like {{date 'DDMMYY'}} see: http://golang.org/pkg/text/template/

