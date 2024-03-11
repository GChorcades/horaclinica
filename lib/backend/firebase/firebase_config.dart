import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAaYR3wO9Dd8hj_2-ciIID9YEXfO12eGQU",
            authDomain: "blank-5w8rzv.firebaseapp.com",
            projectId: "blank-5w8rzv",
            storageBucket: "blank-5w8rzv.appspot.com",
            messagingSenderId: "233928001754",
            appId: "1:233928001754:web:a111a4542dcd3aca087de3"));
  } else {
    await Firebase.initializeApp();
  }
}
