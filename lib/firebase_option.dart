import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    }
    throw UnsupportedError('Error');
  }

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyB2T1tj4TuYM2l_djDw3mJNQjonQnKSDUw',
      appId: '1:781391520528:android:371936e50d10fb6ebd3b95',
      messagingSenderId: 'messagingSenderId',
      projectId: 'barber-booking-d8c1a',
      storageBucket: 'barber-booking-d8c1a.appspot.com');
  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyCFALIiFy9wskg1ohpW4LHin_8YTIqM2WU',
      appId: '1:781391520528:ios:47851040c0e3ce4dbd3b95',
      messagingSenderId: '781391520528',
      projectId: 'barber-booking-d8c1a',
      storageBucket: 'barber-booking-d8c1a.appspot.com');
  static const FirebaseOptions web = FirebaseOptions(
      apiKey: 'AIzaSyB_1-CNr0ztco2O34662frh1yDCSWN-HvU',
      appId: '1:781391520528:web:6cf47461ed75bb2abd3b95',
      messagingSenderId: '781391520528',
      projectId: 'barber-booking-d8c1a',
      storageBucket: 'barber-booking-d8c1a.appspot.com');
}
