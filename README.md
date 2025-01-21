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

With a custom path to the command line tools

```sh
./dr-android-tools/setup-basic-environment /custom/path/cmdline-tools
```

### Setup C Extension environment
```sh
./dr-android-tools/setup-cext-environment
```

### Build and test on device
```sh
./dr-android-tools/build-and-test-on-device
```

### Build C Extension

Build the C extension add it to your game directory
```sh
./dr-android-tools/build-cext ./path/to/extension.c
```

### Build and sign APK
```sh
./dr-android-tools/build-signed-apk /path/to/keystore.jks
```

### Generate Keystore
```zsh
./dr-android-tools/generate-keystore /path/to/keystore.jks -alias mykey -keypass mypass
```

### Override Android Manifest
Copy the default Android manifest file to the game metadata directory
```sh
./dr-android-tools/override-manifest
```
