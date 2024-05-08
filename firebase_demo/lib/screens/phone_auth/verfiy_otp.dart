import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyOtpWithPhone extends StatefulWidget{
  final String verificationId ;
 const VerifyOtpWithPhone({Key? key , required this.verificationId} ) : super(key:key);

 @override
  State<VerifyOtpWithPhone> createState() => _VerifyOtpWithPhoneState();
}

class _VerifyOtpWithPhoneState extends State<VerifyOtpWithPhone>{
  TextEditingController otpController = TextEditingController();

  void verifyOTP() async {
    String otp = otpController.text.trim();
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: widget.verificationId,smsCode: otp);

    try {
      UserCredential userCredential =  await FirebaseAuth.instance.signInWithCredential((credential));
      if (userCredential.user != null){
        Navigator.popUntil(context, (route) => route.isFirst);
        Navigator.pushReplacement(context,CupertinoPageRoute(builder: (context)=>const HomeScreen())) ;
      }
    } on FirebaseAuthException catch(ex){
      log(ex.code.toString());
    }



  }
  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                 TextField(
                  controller : otpController,
                  decoration: const InputDecoration( labelText: "6-Digit OTP",
                  counterText: ""),
                  keyboardType: TextInputType.number,
                   maxLength: 6,
                ),
                const SizedBox(height: 20,),
                CupertinoButton(child: const Text('Verify'),color: Colors.blue, onPressed:(){
                  verifyOTP();
                } ),
              ],
            ),),
          ]
        ),
      ),

    );
  }
}