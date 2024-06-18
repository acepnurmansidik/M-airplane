// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAhJNTZAkTwqbPzqiL_HjjtD4rYJ3a-gl0',
    appId: '1:604560300602:web:8e9d2fe32493528857f303',
    messagingSenderId: '604560300602',
    projectId: 'airplane-18148',
    authDomain: 'airplane-18148.firebaseapp.com',
    storageBucket: 'airplane-18148.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAg-smada7eDqcTjX60Oi-xYXAc8uooMhs',
    appId: '1:604560300602:android:32596ffa5b7484db57f303',
    messagingSenderId: '604560300602',
    projectId: 'airplane-18148',
    storageBucket: 'airplane-18148.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCu1YVelLcOFgX3SMniorSL-Z-EmpmZ1c',
    appId: '1:604560300602:ios:80058eb4e094420957f303',
    messagingSenderId: '604560300602',
    projectId: 'airplane-18148',
    storageBucket: 'airplane-18148.appspot.com',
    iosBundleId: 'com.example.airplane',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCu1YVelLcOFgX3SMniorSL-Z-EmpmZ1c',
    appId: '1:604560300602:ios:80058eb4e094420957f303',
    messagingSenderId: '604560300602',
    projectId: 'airplane-18148',
    storageBucket: 'airplane-18148.appspot.com',
    iosBundleId: 'com.example.airplane',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAhJNTZAkTwqbPzqiL_HjjtD4rYJ3a-gl0',
    appId: '1:604560300602:web:c4d9c7b5f1dd639557f303',
    messagingSenderId: '604560300602',
    projectId: 'airplane-18148',
    authDomain: 'airplane-18148.firebaseapp.com',
    storageBucket: 'airplane-18148.appspot.com',
  );
}
