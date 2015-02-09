Thing
=====

A *Thing* in Ninja nomenclature refers to an instance of a *Thing Class*. A *Thing* is a conceptual representation of a physical actor, service, or device. This extra level of abstraction allows us to separate a physical object, say, a wallet from a tag that lives in that wallet. If the tag breaks and is replaced, the associations to *wallet* don't change. In addition, this allows any history associated with the *Thing* to be retained.

For example, one particular *Thing Class* is "person". An instance of that *Thing Class* is a real person, let's call him Bob. "Bob" is made up of Things associated to him: his wallet, keys, phone, etc.

An overview of these relationships is outlined below.

.. image:: images/thing_class_relationships.png
  :width: 60%
  :align: center
