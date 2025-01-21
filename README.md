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

### Setup C Extension environment

Install necessary Android SDK and NDK components for C Extension development
```sh
./dr-android-tools/setup-cext-environment
```

### Build and test on device

Build and install the game on a connected Android device
```sh
./dr-android-tools/build-and-test-on-device
```

Specify a custom game directory
```sh
./dr-android-tools/build-and-test-on-device my-rpg-game
```

### Build C Extension

Build the C extension and install it in the specified game directory
```sh
./dr-android-tools/build-cext ./path/to/extension.c
```

Specify a custom game directory
```sh
./dr-android-tools/build-cext ./path/to/extension.c my-rpg-game
```

### Build and sign APK

Build and sign the APK for the Google Play Store
```sh
./dr-android-tools/build-signed-apk /path/to/keystore.jks
```

Specify a custom game directory
```sh
./dr-android-tools/build-signed-apk /path/to/keystore.jks my-rpg-game
```

