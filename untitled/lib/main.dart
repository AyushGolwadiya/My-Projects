import 'package:flutter/material.dart';
import 'package:untitled/ui_helper/util.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The first app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green ,
        textTheme: TextTheme(
          displayMedium :TextStyle(fontSize: 50,fontWeight: FontWeight.w100 ,fontStyle: FontStyle.italic ,color: Colors.orange) ,
          titleSmall: TextStyle(fontSize: 30 ,fontWeight: FontWeight.w600 ,fontStyle : FontStyle.italic ,color: Colors.green)
        )
      ),

      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  var emailTextController = TextEditingController();
  var passTextController = TextEditingController();
  @override
  Widget build(BuildContext context){
    var  arrNames = ['A','B','C','D','E','F','J'] ;
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body:Center(
        child: Container(
          height: 300,
          width: 300,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Time $time') ,
              ElevatedButton(onPressed: (){

                }, child: Text('Current Time'))
            ],
          ) ,
        ),
      )
    );
  }
}