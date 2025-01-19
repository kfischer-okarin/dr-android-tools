# dr-android-tools

Tools for DragonRuby Android projects

## Setup
Clone this repository right into a dragonruby directory (i.e. next to the `dragonruby` binary) and execute
`setup-basic-enviroment` to download all basic tools for debugging and signing APKs into `./android`.

If you also want to compile C Extensions for Android then also execute `setup-cext-environment` afterwards.

## Usage Examples

Each of the scripts has a `--help` flag with a short explanation.

### Setup android environment in DR Folder

Use command line tools from common installation locations
```sh
./dr-android-tools/setup-basic-environment
```

Specify a custom path to the command line tools

```sh
./dr-android-tools/setup-basic-environment /custom/path/cmdline-tools
```
