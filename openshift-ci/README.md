## OpenShift CI

### Dockerfile.tools

Base image used on CI for all builds and test jobs. See [here](https://github.com/integr8ly/ci-cd/blob/master/openshift-ci/README.md) for more information on creating and deploying a new image.

#### Build and Test

```
BUILD_TOOL="${BUILD_TOOL:-podman}"
$ ${BUILD_TOOL} build -t registry.svc.ci.openshift.org/integr8ly/cro-base-image:latest - < Dockerfile.tools
$ IMAGE_NAME=registry.svc.ci.openshift.org/integr8ly/cro-base-image:latest test/run 
operator-sdk version: "v1.21.0", commit: "89d21a133750aee994476736fa9523656c793588", kubernetes version: "v1.23", go version: "go1.19.4", GOOS: "linux", GOARCH: "amd64"
go version go1.19.4 linux/amd64
go mod tidy
...
SUCCESS!
```
