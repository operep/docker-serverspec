# docker-serverspec

[![Build Status](https://travis-ci.org/jadametz/docker-serverspec.svg?branch=master)](https://travis-ci.org/jadametz/docker-serverspec)

`docker-serverspec` is a minimal Ruby image capable of running rspec / serverspec for the (integration) testing of Docker images.

## Getting Started

The following command can be used as an example as well as to test the `Dockerfile` for this repository.

```bash
$ docker run --rm --name integration-test \
➭ -v /var/run/docker.sock:/var/run/docker.sock \
➭ -v $(pwd):/docker-serverspec \
➭ -w /docker-serverspec \
➭ oleksandrp/serverspec \
➭ spec/
...

Finished in 1.97621 seconds (files took 0.54975 seconds to load)
10 examples, 0 failures
```
