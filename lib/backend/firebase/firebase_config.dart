import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBnSOrzmG9Uib9cPfF9OD1Xq9HBpRyBhQw",
            authDomain: "my-health-space.firebaseapp.com",
            projectId: "my-health-space",
            storageBucket: "my-health-space.firebasestorage.app",
            messagingSenderId: "703538134142",
            appId: "1:703538134142:web:ec6c7382131f45476d2c2f"));
  } else {
    await Firebase.initializeApp();
  }
}
