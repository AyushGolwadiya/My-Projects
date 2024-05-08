import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  var nameFromHome ;

  ProfileScreen(
      this.nameFromHome,
      );
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar:AppBar(
       title: Text("Profile Screen"),
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                print('object');
              },
              child: Container(
                width: 200,
                height: 200,
                child: CircleAvatar(
                  child: Icon(Icons.person,size: 100),
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            Text('Welcome , $nameFromHome',textAlign:TextAlign.justify ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
          ],
        ),
      ),
    );
  }
}