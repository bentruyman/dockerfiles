# Alpine

> Alpine Linux is a security-oriented, lightweight Linux
> distribution based on musl libc and busybox.

Foundational image based on the official [alpine](https://hub.docker.com/_/alpine/) image from which all other images in this repository are based. This image adds a user named `core` with a `uid` of `1000`, allowing one to de-escalate privileges to this user if one so chooses.

This image also includes an entrypoint script which always executes, in order, a list of scripts found in each container's `/config/init` directory. These can be used to forcibly bootstrap an image before any user commands are executed.

## Usage

```sh
docker run --rm -it bentruyman/alpine:3.2
```
