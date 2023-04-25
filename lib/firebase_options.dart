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
    apiKey: 'AIzaSyAZSS6nIK32egwbd3EVDzaz573YOxWW1Gg',
    appId: '1:233758197520:web:7f920791311a9750008795',
    messagingSenderId: '233758197520',
    projectId: 'lenguajesmodernos2023',
    authDomain: 'lenguajesmodernos2023.firebaseapp.com',
    storageBucket: 'lenguajesmodernos2023.appspot.com',
    measurementId: 'G-D0W57NVS8P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBnlghQbITa9hfyuTeC7F2iMDk3yhNYBw',
    appId: '1:233758197520:android:36a2cedfca695007008795',
    messagingSenderId: '233758197520',
    projectId: 'lenguajesmodernos2023',
    storageBucket: 'lenguajesmodernos2023.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASc9NgIORVgRmlpsYW7HZeL0g5_ICh1j4',
    appId: '1:233758197520:ios:bde819c8a407753a008795',
    messagingSenderId: '233758197520',
    projectId: 'lenguajesmodernos2023',
    storageBucket: 'lenguajesmodernos2023.appspot.com',
    iosClientId: '233758197520-23emc0kal1ljcbvrsvfnpqnqp86hkobd.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASc9NgIORVgRmlpsYW7HZeL0g5_ICh1j4',
    appId: '1:233758197520:ios:bde819c8a407753a008795',
    messagingSenderId: '233758197520',
    projectId: 'lenguajesmodernos2023',
    storageBucket: 'lenguajesmodernos2023.appspot.com',
    iosClientId: '233758197520-23emc0kal1ljcbvrsvfnpqnqp86hkobd.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}