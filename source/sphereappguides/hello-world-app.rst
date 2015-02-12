Hello World Application
========================

1. Download the Ninja Sphere Go library

	* `Ninja Sphere Go library <https://github.com/ninjasphere/go-ninja>`_

2. Below are the basic files needed to run your application on the NinjaSphere

main.go

.. code-block:: go

	package main
	
	import (
		"github.com/ninjasphere/hello-world/model"
		"github.com/ninjasphere/go-ninja/api"
		"github.com/ninjasphere/go-ninja/support"
	)
	
	var (
		info = ninja.LoadModuleInfo("./package.json")
	)
	
	//HelloApp describes the hello world application.
	type HelloApp struct {
		support.AppSupport
	}
	
	// Start is called after the ExportApp call is complete.
	func (a *HelloApp) Start(m *model.World) error {
		return nil
	}
	
	// Stop the hello module.
	func (a *HelloApp) Stop() error {
		return nil
	}
	
	func main() {
		app := &HelloApp{}
		err := app.Init(info)
		if err != nil {
			app.Log.Fatalf("failed to initialize app: %v", err)
		}
	
		err = app.Export(app)
		if err != nil {
			app.Log.Fatalf("failed to export app: %v", err)
		}
	
		support.WaitUntilSignal()
	}

package.json

.. code-block:: json

	{
	  "id": "unique.package.name",
	  "name": "hello-world",
	  "version": "0.0.1",
	  "description": "Ninja Sphere - Hello World",
	  "main": "hello-world",
	  "scripts": {
	    "test": "echo \"Error: no test specified\" && exit 1"
	  },
	  "author": "First Last <email@email.com>",
	  "license": "MIT",
	  "topics": {},
	  "maxMemory": 10
	}


model.go

.. code-block:: go

	// This is the configuartion for the hello-world app.
	package model

	// A Hello specifies a hello object.  It has a UUID that is a unique identifier
	// and a label which provides a human readable label.
	type Hello struct {
		UUID   string	`json:"uuid,omitempty"`
		Label  string	`json:"label,omitempty"`
	}

	// A World object is a collection of Hellos.
	type World struct {
		Version string  `json:"version,omitempty"`
		Hellos  []Hello `json:"hellos"`
	}



version.go

.. code-block:: go

	package main

	// Version describes the version number of this package.
	const Version = "0.0.1"



3. Example Sphere Applications

	* `Sphere Go LED Controller <https://github.com/ninjasphere/sphere-go-led-controller>`_
