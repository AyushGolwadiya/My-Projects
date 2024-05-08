import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_demo/screens/email_auth/signup_screen.dart';
class LoginScreen extends StatefulWidget{

  const LoginScreen({Key? key}) :super(key:key);

  @override
  State<LoginScreen>  createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async{
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email=="" || password==""){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please fill details")));
      log("Please fill details");
    }
    else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        if ( userCredential != null){
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        }
      } on FirebaseAuthException catch(ex){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.code.toString())));
        log(ex.code.toString());
      }
    }
  }
  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
      ),
      body: SafeArea(
        child: ListView(
          children:[
            Padding(
                padding: EdgeInsets.all(18),
              child:  Column(
                children: [
                  TextField(
                    controller:emailController,
                    decoration: InputDecoration(
                      labelText: "Email Address"
                    ),
                  ) ,
                  SizedBox(height: 10,),

                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password"
                    ),
                  ) ,
                  SizedBox(height: 20,),

                  CupertinoButton(
                      child: Text("Log in"),
                      onPressed:(){
                        login();
                      },
                    color: Colors.blue,
                  ),
                  SizedBox(height: 20,),
                  
                  CupertinoButton(
                      child: Text("Create an Account"),
                      onPressed: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => const SignUpScreen()));
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