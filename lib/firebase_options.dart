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
    apiKey: 'AIzaSyAa5fOTql-zdSe8fWDDD57aQ24AQ6v2j-I',
    appId: '1:951990504687:web:a6ce4536699749af395f1a',
    messagingSenderId: '951990504687',
    projectId: 'atw-task-8bdcd',
    authDomain: 'atw-task-8bdcd.firebaseapp.com',
    storageBucket: 'atw-task-8bdcd.firebasestorage.app',
    measurementId: 'G-VXXJVYCEB8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAr0O_wYCXamZvyNEF6DEqSE2LTwTpORGk',
    appId: '1:951990504687:android:1368e59fa44fe71a395f1a',
    messagingSenderId: '951990504687',
    projectId: 'atw-task-8bdcd',
    storageBucket: 'atw-task-8bdcd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWQC6Y_iSiTXNUFScQ5gQdPBQEPmuOi0U',
    appId: '1:951990504687:ios:764cff8704935ca8395f1a',
    messagingSenderId: '951990504687',
    projectId: 'atw-task-8bdcd',
    storageBucket: 'atw-task-8bdcd.firebasestorage.app',
    iosBundleId: 'com.example.atwProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDWQC6Y_iSiTXNUFScQ5gQdPBQEPmuOi0U',
    appId: '1:951990504687:ios:764cff8704935ca8395f1a',
    messagingSenderId: '951990504687',
    projectId: 'atw-task-8bdcd',
    storageBucket: 'atw-task-8bdcd.firebasestorage.app',
    iosBundleId: 'com.example.atwProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAa5fOTql-zdSe8fWDDD57aQ24AQ6v2j-I',
    appId: '1:951990504687:web:d6b994bef03bb0d7395f1a',
    messagingSenderId: '951990504687',
    projectId: 'atw-task-8bdcd',
    authDomain: 'atw-task-8bdcd.firebaseapp.com',
    storageBucket: 'atw-task-8bdcd.firebasestorage.app',
    measurementId: 'G-YP5FMPCM9P',
  );
}
