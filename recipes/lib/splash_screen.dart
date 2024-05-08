
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:recipes/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage())) ;
    });
  }
  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      body:Container(
        color: Colors.blue.shade500,
        child: Center(
          child: Text('Foodoo',style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 40,
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}