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
    apiKey: 'AIzaSyCOTYzQJ-DT4h2QjpHEe1DkG-3rviG0ntY',
    appId: '1:570733787003:web:b23efae102ed72592b2fde',
    messagingSenderId: '570733787003',
    projectId: 'kanbanapp-37ec8',
    authDomain: 'kanbanapp-37ec8.firebaseapp.com',
    storageBucket: 'kanbanapp-37ec8.appspot.com',
    measurementId: 'G-C95WK6NV2T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD02PyD9I8zASd-3GIMT5WdzCm004Vx80I',
    appId: '1:570733787003:android:6b724e62359bfccc2b2fde',
    messagingSenderId: '570733787003',
    projectId: 'kanbanapp-37ec8',
    storageBucket: 'kanbanapp-37ec8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClvyxT-wt50EmnZ5B84MpuWBaiPPHruHk',
    appId: '1:570733787003:ios:ee75f456be5e47af2b2fde',
    messagingSenderId: '570733787003',
    projectId: 'kanbanapp-37ec8',
    storageBucket: 'kanbanapp-37ec8.appspot.com',
    iosBundleId: 'com.example.kanbanApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClvyxT-wt50EmnZ5B84MpuWBaiPPHruHk',
    appId: '1:570733787003:ios:ee75f456be5e47af2b2fde',
    messagingSenderId: '570733787003',
    projectId: 'kanbanapp-37ec8',
    storageBucket: 'kanbanapp-37ec8.appspot.com',
    iosBundleId: 'com.example.kanbanApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCOTYzQJ-DT4h2QjpHEe1DkG-3rviG0ntY',
    appId: '1:570733787003:web:a0613f0993a090632b2fde',
    messagingSenderId: '570733787003',
    projectId: 'kanbanapp-37ec8',
    authDomain: 'kanbanapp-37ec8.firebaseapp.com',
    storageBucket: 'kanbanapp-37ec8.appspot.com',
    measurementId: 'G-17NZFLZL58',
  );
}