import 'package:flutter/material.dart';
import 'package:ui_design_1/common_widgets.dart';
import 'package:ui_design_1/my_style.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: mainColor,
        body: ListView(
          children: const [
            Stack(
              children: [
                MyPost(),
                MyProfile(),
                MyAppBar()//AppBar
              ],
            )
          ],
        ),
      ),
    );
  }
}
