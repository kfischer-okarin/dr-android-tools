#!/bin/sh

set -e

cd $(dirname $0)/..

if [ ! -f ./dragonruby ]; then
  echo "Please place dr-android-tools in the root of a DragonRuby root directory"
  echo "in order for all the scripts to work correctly."
  exit 1
fi

executable_name=$(basename $0)

log() {
  # Green text
  printf "\e[32m[$executable_name]\e[0m $1\n"
}