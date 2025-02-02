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
    apiKey: 'AIzaSyAMQHI_-78C-k0bhxsRzhyQi_78DKeb4aw',
    appId: '1:143541657545:web:9d13975f8114f45c981218',
    messagingSenderId: '143541657545',
    projectId: 'villacafe-8a259',
    authDomain: 'villacafe-8a259.firebaseapp.com',
    storageBucket: 'villacafe-8a259.appspot.com',
    measurementId: 'G-L526MK14G3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqqDNFBexc-PNNopitHOJXFYgWwVNVryY',
    appId: '1:143541657545:android:332b90eec0a292c1981218',
    messagingSenderId: '143541657545',
    projectId: 'villacafe-8a259',
    storageBucket: 'villacafe-8a259.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRkz3VDG0k5nPpyzr76g3upYfLDl9mOAU',
    appId: '1:143541657545:ios:24a33239ce67e1aa981218',
    messagingSenderId: '143541657545',
    projectId: 'villacafe-8a259',
    storageBucket: 'villacafe-8a259.appspot.com',
    iosBundleId: 'com.example.villa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRkz3VDG0k5nPpyzr76g3upYfLDl9mOAU',
    appId: '1:143541657545:ios:24a33239ce67e1aa981218',
    messagingSenderId: '143541657545',
    projectId: 'villacafe-8a259',
    storageBucket: 'villacafe-8a259.appspot.com',
    iosBundleId: 'com.example.villa',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAMQHI_-78C-k0bhxsRzhyQi_78DKeb4aw',
    appId: '1:143541657545:web:9613f641da8dde9a981218',
    messagingSenderId: '143541657545',
    projectId: 'villacafe-8a259',
    authDomain: 'villacafe-8a259.firebaseapp.com',
    storageBucket: 'villacafe-8a259.appspot.com',
    measurementId: 'G-M4HH5X88XQ',
  );
}
