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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCbF2Kspno8SHP07svPv8AWqKfjykOjgNo',
    appId: '1:815734281160:web:b36309ab79b91afc92a6fd',
    messagingSenderId: '815734281160',
    projectId: 'flutter-chat-8524d',
    authDomain: 'flutter-chat-8524d.firebaseapp.com',
    storageBucket: 'flutter-chat-8524d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKNR99a-GgpISE80tuqYTEo2KfbBU-SQM',
    appId: '1:815734281160:android:f58652a69e55f35592a6fd',
    messagingSenderId: '815734281160',
    projectId: 'flutter-chat-8524d',
    storageBucket: 'flutter-chat-8524d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYIL3QbUopfQ2Vm0xB3OTBj_IEpguJ10g',
    appId: '1:815734281160:ios:e2d340872d41ee0892a6fd',
    messagingSenderId: '815734281160',
    projectId: 'flutter-chat-8524d',
    storageBucket: 'flutter-chat-8524d.appspot.com',
    iosClientId: '815734281160-sjkdoclp944qu8s4fatsg66qkd75rb1k.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterChatFirebase',
  );
}
