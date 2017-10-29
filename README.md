#### Pre-Requisites

	1. Fresh installed ubuntu 16.04.
	2. root user permissions to run commands.


#### Help for deploying Yaksh interface.

	- To get help while deployment
		$ make help

	- Install Dependencies on-base machine:
		$ make install-dep

	- Build docker images:
		$ make build

	- To run containers:
		$ make start

	- You need to create super a user to work with yaksh:
		$ make createsuperuser

	- Now Your interface is ready. You can access it using browser just go to http://localhost:8000

	- Clean your docker containers:
		$ make clean

	- other utilities like restart, tail, status
