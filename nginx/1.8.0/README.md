# Nginx

> nginx [engine x] is an HTTP and reverse proxy server, a
> mail proxy server, and a generic TCP proxy server,
> originally written by Igor Sysoev.

## Usage

```sh
docker run --rm -it \
  -p 80:80 \
  -v $(pwd):/usr/share/nginx/html \
  bentruyman/nginx:1.8.0 nginx
```
