# Packer with Windows-Update Plugin

Image based off the [hashicorp/packer](https://hub.docker.com/r/hashicorp/packer/) image with the [windows-update](https://github.com/rgl/packer-provisioner-windows-update) provisioner installed.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

List the different parameters available to your container

```shell
docker run -t jamisonkissh/packer-windows-update <packer command>
```

Get Packer version for example 

```shell
docker run -t jamisonkissh/packer-windows-update version
```

Or to build

```shell
docker run -t -v `pwd`:/usr/working jamisonkissh/packer-windows-update build /usr/working/yourFile.json
```

## Built With

* [Packer](https://hub.docker.com/r/hashicorp/packer/)
* [Windows-Update Provisioner](https://github.com/rgl/packer-provisioner-windows-update) 
