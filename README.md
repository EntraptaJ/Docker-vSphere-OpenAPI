# KristianFJones/Docker-vSphere-OpenAPI

This is a docker based solution for running the [vmware/vmware-openapi-generator](https://github.com/vmware/vmware-openapi-generator.git) script without needing Python or the Python VMWare SDK installed on your host

## Usage

Clone this repo locally

```SH
git clone https://github.com/KristianFJones/Docker-vSphere-OpenAPI.git
cd Docker-vSphere-OpenAPI
```

Edit [generate.sh](./generate.sh) in your prefered text editor and change the `vsphere.local` in `HOST="vsphere.local"` to the hostname of your vCenter.

Then run the `./generate.sh` script

```
./generate.sh
```

Assuming everything works you should get output like this:

```
Trying to connect https://192.168.10.10/api
Connected to https://192.168.10.10/api
processing package content

processing package cis
processing package vcenter


processing package appliance

processing package vapi

Generated swagger files at /tmp/output for https://192.168.10.10/api in 39.6364979744 seconds
```

And the final OpenAPI JSON files should be under `./output/`
