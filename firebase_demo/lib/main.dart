import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/firebase_options.dart';
import 'package:firebase_demo/screens/email_auth/login_screen.dart';
import 'package:firebase_demo/screens/phone_auth/sign_in_phone.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/screens/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // To get the data from the Cloud firestore
  // DocumentSnapshot snapshot = await FirebaseFirestore.instance
  //     .collection("users")
  //     .doc('CaMvbA12lhDSaMgYW3cf')
  //     .get();
  // log(snapshot.data().toString());

  // Map<String, dynamic> newUserData = {"name": "AG", "email": "ag@gmail.com"};

  // To Write the data in the cloud firestore by generating automatic document id
  // await _firestore.collection('users').add(newUserData);
  // log("New user saved");

  // To update the existing
  // await _firestore.collection('users').doc('myIdisAG').update({
  //   'email':'ayushgolvadiya@Gmail.com'
  // });

  // To delete
  // await _firestore.collection('users').doc('myIdisAG').delete();
  // log('New user saved');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (FirebaseAuth.instance.currentUser != null)
          ? const HomeScreen()
          : const SignInPhone(),
    );
  }
}
