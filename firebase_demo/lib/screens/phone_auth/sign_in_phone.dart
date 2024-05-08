import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/screens/phone_auth/verfiy_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPhone extends StatefulWidget{

 const SignInPhone({Key? key}):super(key:key);
  @override
  State<SignInPhone> createState()=> _SignInPhoneState();
}

class _SignInPhoneState extends State<SignInPhone>{

  TextEditingController phoneController = TextEditingController();

  void sendOTP() async {
    String phone ="+91" + phoneController.text.trim();
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      codeSent: (verificationId , resendToken){
        Navigator.push(context,CupertinoPageRoute(builder: (context)=>VerifyOtpWithPhone(verificationId: verificationId,)));
      },
      verificationCompleted: (credential){},
      verificationFailed: (ex){
        log(ex.code.toString());
      },
      codeAutoRetrievalTimeout: (verificationId){},
      timeout: Duration(seconds: 30)
    );
  }

  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sign In With Phone"),
        centerTitle: true,
        surfaceTintColor: Colors.blue,
      ),
      body:  SafeArea(
        child: ListView(
          children: [
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                children:  [
                   TextField(controller: phoneController,
                    decoration: InputDecoration(
                       labelText: "Phone Number"
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height:20,),
                  CupertinoButton(
                      child: const Text("Sign In"),
                      color: Colors.blue,
                      onPressed: (){
                        sendOTP();
                      }
                  )
                ],
                           ),
             )
          ],
        ),
      ),
    );
  }
}