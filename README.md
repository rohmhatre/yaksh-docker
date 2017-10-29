Follow steps given below


#### Docker Compose Help for deploying Yaksh interface

	- To get help while deployment
		$ make help

	- Install Dependancies on base machine:
		$ make install-dep

	- Build docker images:
		$ make build

	- To run containers:
		$ make start

	- You need to create super user in order to work with yaksh:
		$ make createsuperuser

	- Now Your interface is ready. You can access it using browser just go to http://localhost:8000

	- Clean your docker containers:
		$ make clean

	- other utilities like restart,tail,status
