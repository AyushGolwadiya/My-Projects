import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/home.dart';
void main() {
  runApp(const Fooderlich());
}
class Fooderlich extends StatelessWidget{
  const Fooderlich({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext buildContext){
    final themeFromFile = FooderLichTheme.dark();
    // Todo = Apply Home Widget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fooderlich",
      theme: themeFromFile ,
      home: const Home(),
    );
  }
}