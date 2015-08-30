# Node.js

> Node.js® is a platform built on Chrome's JavaScript
> runtime for easily building fast, scalable network
> applications.

## Usage

```sh
docker run --rm -it \
  -v $(pwd):/data/app \
  -w /data/app \
  bentruyman/node:0.12.7 npm start
```
