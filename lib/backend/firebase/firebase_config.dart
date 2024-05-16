import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBTFTOcdA45ALq4ha_kbIQ8XbXSYBrgIbU",
            authDomain: "mra-app-dd9a1.firebaseapp.com",
            projectId: "mra-app-dd9a1",
            storageBucket: "mra-app-dd9a1.appspot.com",
            messagingSenderId: "535062838544",
            appId: "1:535062838544:web:d97e93c81b5fe42db17995"));
  } else {
    await Firebase.initializeApp();
  }
}
