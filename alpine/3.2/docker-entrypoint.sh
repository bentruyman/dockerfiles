#!/bin/sh

for file in /config/init/*
do
  sh "$file" $@
done

exec "$@"
