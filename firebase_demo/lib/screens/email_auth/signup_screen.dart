import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget{

  const SignUpScreen({Key? key}) :super(key:key);

  @override
  State<SignUpScreen>  createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void createAccount()async
  {
    String email = emailController.text.trim();
    String password = passwordController.text.trim() ;
    String cPassword = cPasswordController.text.trim();

    if (email.isEmpty ||  password.isEmpty || cPassword.isEmpty){
      log("Please fill all the details");
    }
    else if(password != cPassword){
      log("Passwords don't match");
    }
    else {
      try {
        // Create new Account
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        if(userCredential.user != null){
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Account Created Successfully')));
        }
      } on FirebaseAuthException catch(ex){
        log(ex.code.toString());
      }

    }
  }
  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SignUp Page"),
      ),
      body: SafeArea(
        child: ListView(
          children:[
            Padding(
              padding: EdgeInsets.all(18),
              child:  Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Email Address"
                    ),
                    controller: emailController,
                  ) ,
                  SizedBox(height: 10,),

                  TextField(
                    decoration: InputDecoration(
                        labelText: "Password"
                    ),
                    controller: passwordController,
                  ) ,
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Confirm Password"
                    ),
                    controller: cPasswordController,
                  ),
                  SizedBox(height: 20,),
                  CupertinoButton(
                    child: Text("Sign Up"),
                    onPressed:(){
                      createAccount();
                    },
                    color: Colors.blue,
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}