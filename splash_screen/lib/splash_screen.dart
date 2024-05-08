
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';
import 'package:splash_screen/profile_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard() ,));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Classico',style: TextStyle(color: Colors.white ,fontSize: 35, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}