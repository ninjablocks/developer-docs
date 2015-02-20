Hello World Driver
==================

1. Download the Ninja Sphere Go library

	* `Ninja Sphere Go library <https://github.com/ninjasphere/go-ninja>`_

2. Below are the basic files needed to run your application on the NinjaSphere

main.go

.. code-block:: go

	package main
	
	import (
		"fmt"
		"log"
		"os"
		"os/signal"
	
		"github.com/davecgh/go-spew/spew"
		"github.com/ninjasphere/go-ninja"
	)
	
	var _ = fmt.Printf
	var _ = spew.Dump
	
	func main() {
	
		conn, err := ninja.Connect("com.hello.world")
		if err != nil {
			log.Fatalf("Could not connect to MQTT: %s", err)
		}
	
		bus, err := conn.AnnounceDriver("com.hello.world", "driver-hello-world", getCurDir())
		if err != nil {
			log.Fatalf("Could not get driver bus: %s", err)
		}
	
		spew.Dump(bus)
	
		c := make(chan os.Signal, 1)
		signal.Notify(c, os.Interrupt, os.Kill)
	
		// Block until a signal is received.
		s := <-c
		fmt.Println("Got signal:", s)
	
	}
	
	func getCurDir() string {
		pwd, _ := os.Getwd()
		return pwd 	 "/"
	}

package.json

.. code-block:: json

	{
	  "name": "driver-hello-world",
	  "version": "0.1.0",
	  "description": "Ninja Sphere - Hello World Driver",
	  "main": "main.go",
	  "scripts": {
	    "test": "echo \"Error: no test specified\" && exit 1"
	  },
	  "author": "First Last <first.last@gmail.com>",
	  "license": "MIT",
	  "topics": {},
	  "maxMemory": 10
	}

version.go

.. code-block:: go

	package main

	// Version describes the version number of this package.
	const Version = "0.0.1"



3. Example Drivers

	* `Driver for Philips Hue <https://github.com/ninjasphere/driver-go-hue>`_
	* `Driver for Samsung TV over IP <https://github.com/ninjasphere/driver-samsung-tv>`_
	* `Example Fake Driver <https://github.com/ninjasphere/go-ninja/tree/master/fakedriver>`_
	
