# Postgres

> The world's most advanced open source database

## Usage

```sh
docker run --rm -it \
  -e POSTGRES_DB postgres \
  -e POSTGRES_PASSWORD monkey123 \
  -e POSTGRES_USER postgres \
  -v data:/var/lib/postgresql/data \
  bentruyman/postgres:9.4
```
