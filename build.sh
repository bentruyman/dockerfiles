#!/bin/bash
set -e

####################################################
# Automated script for building and tagging images #
#
# Usage:
#   ./build.sh
#   ./build.sh node node-dev
####################################################

# Directory of this script
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# My Docker Hub namespace
NAMESPACE="bentruyman"

# List of images in desired build order
IMAGES=(
  alpine
  erlang
  elixir
  elixir-dev
  elixir-phoenix-dev
  nginx
  node
  node-dev
  postgres
  redis
)

# If image(s) are specified as args, use that instead
if [[ ! -z "$@" ]]; then
  IMAGES=("$@")
fi

# Prints an error message
# $1 - Error message
e_error() {
  echo -e "\033[1;31m$@\033[0m";
}

# Prints an warning message
# $1 - Warning message
e_warning() {
  echo -e "\033[1;33m$@\033[0m";
}

# Prints an success message
# $1 - Success message
e_success() {
  echo -e "\033[1;32m$@\033[0m";
}

# Prints a header message
# $1 - Header message
e_header() {
  echo -e "\n\033[1m$@\033[0m";
}

# Builds all found images
build_all_images() {
  for image in ${IMAGES[*]}; do
    build_image_with_tags $image
  done

  e_header "Finished building all images!"
}
# Builds a given image of a specified tag
# $1 - Image name
# $2 - Tag name
build_image_with_tags() {
  local tags=$(get_tags $image)

  if [[ -z "$tags" ]]; then
    e_error "No tags found for image: $image"
    exit 1
  fi

  for tag in $tags; do
    e_header "Building image: $image:$tag"

    if [[ ! -f "$DIR/$image/$tag/README.md" ]]; then
      e_warning "No README.md found for image: $image:$tag"
    fi

    build_image_of_tag $image $tag
  done

  tag_latest_image $image $tags

  e_success "Successfully built image: $image $tags"
}

# Builds a given image of a specified tag
# $1 - Image name
# $2 - Tag name
build_image_of_tag() {
  if [[ ! -f "$DIR/$1/$2/Dockerfile" ]]; then
    e_error "No Dockerfile found for image: $1"
    exit 1
  fi

  set +e
  docker pull "$NAMESPACE/$1:$2" 2> /dev/null
  set -e

  docker build -t "$NAMESPACE/$1:$2" "$DIR/$1/$2"
}
# Gets all tags for a given image
# $1 - Image name
get_tags() {
  ls "$DIR/$1"
}

# Gets the latest tag amongst a given list
# $1 - Image name
# $2 - List of tags
get_tags() {
  ls "$DIR/$1"
}

# Gets the last tag in a given list of tags
# $1 - List of tags
get_latest_tag() {
  echo $1 | awk '{print $NF}'
}

# Tags the highest version image as "latest"
# $1 - Image name
# $1 - List of tags
tag_latest_image() {
  local latest=$(get_latest_tag "$tags")
  docker tag -f "$NAMESPACE/$1:$latest" "$NAMESPACE/$1:latest"
}

# Let's go!
build_all_images
