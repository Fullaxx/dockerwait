# dockerwait
A simple binary that will keep a docker container open and running until a signal is caught

## Introduction
dockerwait is a small binary that can be used in a docker image that has no other purpose other than to be open and running.
Using dockerwait as the main CMD or ENTRYPOINT in a docker image will allow that container to be stay running until a docker stop is issued.
This can be useful if your image only exists to expose files to the host or other containers.
The static version will be larger than the dynamically linked version, but it will run in a scratch container.

## Compile
	./compile.sh

## Run
	./dockerwait
	./dockerwait.static

## Test
	killall dockerwait
	killall dockerwait.static

## Install
	In your Dockerfile: CMD ["/app/dockerwait.static"]
