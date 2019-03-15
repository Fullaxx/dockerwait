# dockerwait
A simple binary that will keep a docker container open and running until a signal is caught

## Introduction
dockerwait is a small binary that can be used in a docker image that has no other purpose other than to be open and running.
Using dockerwait as the main CMD or ENTRYPOINT in a docker image will allow that container to stay running until a 'docker stop' is issued.
This can be useful if your container only exists to expose files to the host or other containers.
The static version will be larger than the dynamically linked version, but it will run standalone in a scratch based image with no executables or dependencies.

## Compile
```
./compile.sh
```
## Run
```
./dockerwait
./dockerwait.static
```
## Test
```
killall dockerwait
killall dockerwait.static
```
## Get
```
mkdir /app
curl -L -s https://github.com/Fullaxx/dockerwait/releases/download/scratch/dockerwait.static -o /app/dockerwait.static
```
## Install
```
CMD ["/app/dockerwait.static"]
```
