# Buildbot Slave

> Buildbot is an open-source framework for automating software
> build, test, and release processes.

```sh
docker run --rm -it bentruyman/buildbot-slave:0.8.12
```

## Linking with a buildbot-master

```sh
docker run --rm -it \
  --link master:buildbot_master \
  bentruyman/buildbot-slave:0.8.12
```
