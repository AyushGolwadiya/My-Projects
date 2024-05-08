import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card0 extends StatelessWidget{

  const Card0({Key ? key})  : super(key : key);
  // 1
  final String category  = "Editor\'s Choice";
  final String title ="The Art of Dough" ;
  final String description  = "Learn To Make the perfect Food";
  final String chef = "Flutter & Dart Chef";

  // 2
  @override
  Widget build(BuildContext buildContext){
    // 3
    return Center(
      // ToDO Decorate container
      child: Container(
        child: Stack(
          children: [
            Text(category , style: FooderLichTheme.darkTextTheme.bodyLarge,),
            Positioned(
                child: Text(title , style: FooderLichTheme.darkTextTheme.headlineSmall,),
            top: 20,),
            Positioned(
                child: Text(description , style: FooderLichTheme.darkTextTheme.bodyLarge,),
            bottom: 30,
            right: 0,),
            Positioned(child: Text(chef , style: FooderLichTheme.darkTextTheme.bodyLarge,)
            ,bottom: 10,
                right: 0,),
          ],
        ),

        padding: EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          height: 450 ,
          width: 350,
        ) ,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mag1.png'),
            fit: BoxFit.cover ,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}