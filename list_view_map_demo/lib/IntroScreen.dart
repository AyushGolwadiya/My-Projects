import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_view_map_demo/main.dart';

class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            RichText(
              text:TextSpan(
                style: TextStyle(
                  color: Colors.grey.shade500 ,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                children:<TextSpan> [
                  TextSpan(text: "Hello & "),
                  TextSpan(text:" Welcome",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.w100,fontSize: 40)),
                ]
              )
            ) ,
            SizedBox(
            height: 200,
            ),
            ElevatedButton(
              onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: "Main App"),));
              }, child: Text('Click'),)
            ],
        )
      )

    );
  }
}