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
    apiKey: 'AIzaSyDeNdXFUGH5aCrE2Fhn4-SyLWbrnJTTL-c',
    appId: '1:721769368879:web:0458328da85af0d8e9e5da',
    messagingSenderId: '721769368879',
    projectId: 'flutter-folder-35631',
    authDomain: 'flutter-folder-35631.firebaseapp.com',
    storageBucket: 'flutter-folder-35631.appspot.com',
    measurementId: 'G-CWSPFV6D0C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBe4nWI8As_w0DyclnTyCMD5KDu2WFTFnc',
    appId: '1:721769368879:android:90dadd9d830e7807e9e5da',
    messagingSenderId: '721769368879',
    projectId: 'flutter-folder-35631',
    storageBucket: 'flutter-folder-35631.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUTeZ4JOLiagM5eMu9iF3Zjyb_oB_TbL0',
    appId: '1:721769368879:ios:bd5a0dd94d0bcb81e9e5da',
    messagingSenderId: '721769368879',
    projectId: 'flutter-folder-35631',
    storageBucket: 'flutter-folder-35631.appspot.com',
    iosBundleId: 'com.devsfolder.flutterfolder',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUTeZ4JOLiagM5eMu9iF3Zjyb_oB_TbL0',
    appId: '1:721769368879:ios:54d91125d70e0909e9e5da',
    messagingSenderId: '721769368879',
    projectId: 'flutter-folder-35631',
    storageBucket: 'flutter-folder-35631.appspot.com',
    iosBundleId: 'com.devsfolder.flutterfolder.RunnerTests',
  );
}
