# Simple Script to simplify key generation for OpenVPN server
[Server setup based on this tutorial](https://wiki.ubuntuusers.de/OpenVPN/)

## About
This simple script can be used to automate the task of issuing keys and the corresponding config files.

## Setup
* Complete tutorial
* Copy files into /etc/openvpn/easy-rsa2
* Make auto-generate-key.sh and build-key-batch executable (chmod +x)
* Check all the names inside auto-generate-key.sh and client_template.ovpn

The script auto-generate-key.sh can now be used to generate keys and config files.
Keys will be created based on the values set in the vars file.
