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
    apiKey: 'AIzaSyDqqsQw1u9JdwPu6DDttvvwXkkm3EBiZ6M',
    appId: '1:228037731712:web:e12cc683a9086a60844d65',
    messagingSenderId: '228037731712',
    projectId: 'tailordb-93dd1',
    authDomain: 'tailordb-93dd1.firebaseapp.com',
    storageBucket: 'tailordb-93dd1.appspot.com',
    measurementId: 'G-GZTM2VSMTP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEYbilNUPSGY6sDo5P3cTsKwDeUyufC6U',
    appId: '1:228037731712:android:7de36c483be1d7c8844d65',
    messagingSenderId: '228037731712',
    projectId: 'tailordb-93dd1',
    storageBucket: 'tailordb-93dd1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcdoCLgDohxJUe4HyxiZw5iAy-ztYbCfI',
    appId: '1:228037731712:ios:3a274fd42c24b741844d65',
    messagingSenderId: '228037731712',
    projectId: 'tailordb-93dd1',
    storageBucket: 'tailordb-93dd1.appspot.com',
    iosBundleId: 'com.tailortape.app.tailortape',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcdoCLgDohxJUe4HyxiZw5iAy-ztYbCfI',
    appId: '1:228037731712:ios:3a274fd42c24b741844d65',
    messagingSenderId: '228037731712',
    projectId: 'tailordb-93dd1',
    storageBucket: 'tailordb-93dd1.appspot.com',
    iosBundleId: 'com.tailortape.app.tailortape',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDqqsQw1u9JdwPu6DDttvvwXkkm3EBiZ6M',
    appId: '1:228037731712:web:35d3286879f248df844d65',
    messagingSenderId: '228037731712',
    projectId: 'tailordb-93dd1',
    authDomain: 'tailordb-93dd1.firebaseapp.com',
    storageBucket: 'tailordb-93dd1.appspot.com',
    measurementId: 'G-9V0G3BJ8LC',
  );
}
