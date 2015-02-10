Ninja Sphere Release Channels
=============================

When changes are made to the Ninja Sphere code base, they go through a release process to ensure they are tested before reaching end users. Developers may choose to sacrifice stability to get in on bleeding edge development and functionality.

**Switching to a release channel other than Stable is likely to cause issues and may require a factory reset *or worse* to recover!**

A summary of a typical path from commiting code to the binary shipping to a Sphere is listed here. Initially, source goes through a *source code Git flow* (note that the Git flow sometimes changes slightly depending on the project):

* **Feature branches** and **forks** on GitHub: This is the place where experiments and in-progress features happen.
* **develop branch** of the main repo: Sometimes used to collect features together before delivering to devices.
* **master branch** of the main repo: The latest code that goes through the binary release process

Once code lands in an official *master branch*, it is immediately built on a CI server and an Apt package is created, at which point the *binary release flow* begins (note that only *binaries* move through this process, source code changes become *new packages*):

* **unstable**: Very likely broken and little effort is made to ensure upgrades are seamless. Used internally by Ninja staff where we can recover. **Not recommended for external developers**
* **testing**: Once a particular package, or set of packages, is deemed to be stable enough that no permanent damage would be done to user data and no regressions on functionality have occured, a package is moved to testing. **For developers who want bleeding edge, possibly breaking, changes**
* **staging**: Every 2 weeks we lock down *feature additions* in the testing branch and only push changes that increase stability and compatibility. Packages move to *staging* so we can test that stable releases can upgrade correctly.
* **stable**: Finally when the previous stable release(s) are able to upgrade to staging safely, we move the packages to stable and all spheres receive the updates. **This is the default, and recommended for non-technical users, and most developers**

Changing release channel can be done by editing ``/etc/apt/sources.list.d/ninjablocks.list`` (run ``sudo with-rw bash`` to get a shell that can write to your Sphere's rootfs). Remember that **changing back to stable requires a factory reset** since it is hard to undo changes that are designed to only move forward.

Additionally, to find out which commits in our Git repositories are in each branch, we have automagically generated branches in each client repository called *stable, staging, testing, unstable* which are synced to the git commit on which the latest package in that release channel was created.

stable
------

**This is the default, and recommended for non-technical users, and most developers**

APT Source:
::
	deb http://s3.amazonaws.com/ninjablocks-apt-repo trusty-spheramid-stable main

iOS Release: `Ninja Sphere on iTunes Store <https://itunes.apple.com/us/app/ninja-sphere/id917455992?mt=8>`_

Android Release: Play Store (coming soon)

staging
-------

APT Source:
::
	deb http://s3.amazonaws.com/ninjablocks-apt-repo trusty-spheramid-staging main

iOS Release: *same as stable or testing*

Android Release: *same as stable or testing*

testing
-------

**For developers who want bleeding edge, possibly breaking, changes**

APT Source:
::
	deb http://s3.amazonaws.com/ninjablocks-apt-repo trusty-spheramid-testing main

iOS Release: *TestFlight invitations* ("Beta" group users should have access, otherwise ping us for access)

Android Release: Join the `Beta Google Group <https://groups.google.com/forum/#!forum/ninjablocks>`_ (open to join), then get the app from: `Beta Releases on the Play Store <https://play.google.com/apps/testing/com.ninjablocks.com.sphere>`_

unstable
--------

**Not recommended for external developers**

APT Source:
::
	deb http://s3.amazonaws.com/ninjablocks-apt-repo trusty-spheramid-unstable main

iOS Release: *internal builds*

Android Release: *internal builds*
