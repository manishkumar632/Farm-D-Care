import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC8PHcEja2xKK1TzzjiX6TscLbjGMUIAWs",
            authDomain: "farmdcare-codefusion.firebaseapp.com",
            projectId: "farmdcare-codefusion",
            storageBucket: "farmdcare-codefusion.appspot.com",
            messagingSenderId: "479848763371",
            appId: "1:479848763371:web:58513776fd6d446f4853ae",
            measurementId: "G-LCRSQ6JY2F"));
  } else {
    await Firebase.initializeApp();
  }
}
