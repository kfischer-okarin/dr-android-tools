#!/bin/sh

set -e

cd $(dirname $0)/..

if [ ! -f ./dragonruby ]; then
  echo "Please place dr-android-tools in the root of a DragonRuby root directory"
  echo "in order for all the scripts to work correctly."
  exit 1
fi

tools_dir=$(dirname $0)
executable_name=$(basename $0)

log() {
  # Green text
  printf "\e[32m[$executable_name]\e[0m $1\n"
}

get_metadata() {
  metadata_key=$1

  metadata_line=$(grep "^$metadata_key=" mygame/metadata/game_metadata.txt || true)

  if [ -z "$metadata_line" ]; then
    echo "Metadata key '$metadata_key' not found"
    exit 1
  fi

  echo $metadata_line | cut -d = -f 2
}

sdkmanager() {
  ./android/cmdline-tools/latest/bin/sdkmanager --sdk_root=./android $@
}

apksigner() {
  ./android/build-tools/$BUILD_TOOLS_VERSION/apksigner $@
}

adb() {
  ./android/platform-tools/adb $@
}

source $tools_dir/lib/tool_versions.sh
