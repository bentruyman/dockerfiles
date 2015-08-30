# Node.js Development

> Node.js® is a platform built on Chrome's JavaScript
> runtime for easily building fast, scalable network
> applications.

This image adds the following development packages:

- g++
- make
- python

## Usage

```sh
docker run --rm -it \
  -v $(pwd):/data/app \
  -w /data/app \
  bentruyman/node-dev:0.12.7 npm start
```
