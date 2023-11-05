// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB_vevz7Jscxmu0KjRc9VPtBRIpBiMby-Y',
    appId: '1:244058332665:web:79841f6660e49cf3737128',
    messagingSenderId: '244058332665',
    projectId: 'music-app-ecc83',
    authDomain: 'music-app-ecc83.firebaseapp.com',
    storageBucket: 'music-app-ecc83.appspot.com',
    measurementId: 'G-LCX938JJVM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCO9DE-pa8bGWxhAoUoxjJU_MgdHCV57s4',
    appId: '1:244058332665:android:737f153909300c4e737128',
    messagingSenderId: '244058332665',
    projectId: 'music-app-ecc83',
    storageBucket: 'music-app-ecc83.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD39263qAjRJVH7njLBEE0AaammLTubRT4',
    appId: '1:244058332665:ios:764b784653479c98737128',
    messagingSenderId: '244058332665',
    projectId: 'music-app-ecc83',
    storageBucket: 'music-app-ecc83.appspot.com',
    iosBundleId: 'com.example.musicApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD39263qAjRJVH7njLBEE0AaammLTubRT4',
    appId: '1:244058332665:ios:cc73d5b7fb482f65737128',
    messagingSenderId: '244058332665',
    projectId: 'music-app-ecc83',
    storageBucket: 'music-app-ecc83.appspot.com',
    iosBundleId: 'com.example.musicApp.RunnerTests',
  );
}
