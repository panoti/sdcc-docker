[![Docker Image CI](https://github.com/panoti/sdcc-docker/actions/workflows/Docker.yml/badge.svg)](https://github.com/panoti/sdcc-docker/actions/workflows/Docker.yml)

# SDCC Compiler Docker

## Description

Dockerizing [SDCC Compiler](http://sdcc.sourceforge.net/) for CI/CD

## Usage

```bash
docker run --rm -it panoti/sdcc:latest /bin/bash
```

or

```bash
docker run --rm -it ghcr.io/panoti/sdcc-docker:latest /bin/bash
```

## Note

- This image just include sdcc compiler without other tools. If you need more tools, just use `apk` to install.
- We support both docker hub and github registry.

## License

SDCC Docker is [MIT licensed](LICENSE).
