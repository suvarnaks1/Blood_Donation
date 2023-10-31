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
    apiKey: 'AIzaSyDS5XsyTE9opHxw1URokWQKAOgCKtoFn_0',
    appId: '1:163446465955:web:51722dd6e34138ec51a616',
    messagingSenderId: '163446465955',
    projectId: 'blooddonationapp-d1bfc',
    authDomain: 'blooddonationapp-d1bfc.firebaseapp.com',
    storageBucket: 'blooddonationapp-d1bfc.appspot.com',
    measurementId: 'G-4D8EP3RZXD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcK9uDYTk22rWpk8n3uPRjbPgv_EDM0Nk',
    appId: '1:163446465955:android:27197cc77d0cfd0151a616',
    messagingSenderId: '163446465955',
    projectId: 'blooddonationapp-d1bfc',
    storageBucket: 'blooddonationapp-d1bfc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHMUuTM14M1BIROY04yHQiCpopS43Wkuk',
    appId: '1:163446465955:ios:d3a351b64c0ea4c151a616',
    messagingSenderId: '163446465955',
    projectId: 'blooddonationapp-d1bfc',
    storageBucket: 'blooddonationapp-d1bfc.appspot.com',
    iosBundleId: 'com.example.blooddonationApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHMUuTM14M1BIROY04yHQiCpopS43Wkuk',
    appId: '1:163446465955:ios:7b2c4eadf099eb2351a616',
    messagingSenderId: '163446465955',
    projectId: 'blooddonationapp-d1bfc',
    storageBucket: 'blooddonationapp-d1bfc.appspot.com',
    iosBundleId: 'com.example.blooddonationApp.RunnerTests',
  );
}