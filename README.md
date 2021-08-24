# telegram_clone

Hello there,
I tried to write clone of telegram in this application. I will prepare the whole design of telegram and present it to the public, you can have it develop it by cloning it. if you want to create your own telegram i would like you to take a look at [tdlib](https://pub.dev/packages/tdlib) i hope it will be useful application for you

## Getting Started

`gh repo clone ofarukbicer/telegram-clone` or `git clone https://github.com/ofarukbicer/telegram-clone.git`

### Changed application name
Set the `android:label="Telegram"` line, which is the `5th line` in the `@/android/app/src/AndroidManifest.xml` , according to you.

### Changed application icon
To change the application icon, first go to the link, then design an icon for yourself and click the download button in the upper right corner to download a zip file. Copy all the folders named `res/mipmap-*` in the zip file and paste it in `@/android/app/src/res` and select replace all that's it

### Changed application id 
To change the app ID, first change line `37` in `@/android/app/build.gradle` to `com.yourname.app-name` or `com.app-name`.

#### App run 
1. Starting android/ios emulator
2. `flutter run apk` or `flutter run ios`
3. you are ready :)

#### App build
1. `flutter build apk` or `flutter build ios`
2. Your apk file is ready in the `@/build/app/outputs/apk/release/app-release.apk` location
3. Sorry i have never done a build for ios so i don't know where it saved it

Happy hacking :)

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
