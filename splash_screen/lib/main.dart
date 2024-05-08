import 'package:flutter/material.dart';
import 'package:splash_screen/profile_screen.dart';
import 'package:splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(),
    );
  }
}
class DashBoard extends StatelessWidget {
  var txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home Screen'),
      ),
      body:Center(
        child: Container(
          width: 300,
          child: Column(
            children: [
              Text('DashBoard Screen',style: TextStyle(fontSize: 25),),
              SizedBox(height: 11,),
              TextField(
                controller: txtController ,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 11,),
              ElevatedButton(
                onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ProfileScreen(txtController.text.toString()),));
              }, child: Text('My Profile'),)
            ],
          ),
        ),
      ),
    );// This trailing comma makes auto-formatting nicer for build methods.
  }
}
