import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCGAouWEch9FLEpJ9HedgLiS_mo0DoZ-0I",
            authDomain: "test-b69bf.firebaseapp.com",
            projectId: "test-b69bf",
            storageBucket: "test-b69bf.appspot.com",
            messagingSenderId: "61328202083",
            appId: "1:61328202083:web:59ca9a4a3ed4860dcf9b56",
            measurementId: "G-1NFYQMW6JX"));
  } else {
    await Firebase.initializeApp();
  }
}
