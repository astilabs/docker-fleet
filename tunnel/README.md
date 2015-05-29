# README #

You can only build this project on your local LAN (/VPN).  This is the only way to access private keys not included in source control.

### How to build ###
* sudo docker build -t fleetctl .

### How to use ###
* To Submit a Fleet Units: 
	sudo docker run -v $PWD/unit-files:/root/unit-files fleetctl $S1 start unit-files/service/instances/*  
* To Destroy a Fleet Units:
	sudo docker run fleetctl $S1 destroy unit-files/service/instances/*

### Do NOT upload to Docker Hub ###
### Will contain private keys on build ###
