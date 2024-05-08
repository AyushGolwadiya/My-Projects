import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'author_card.dart';

class Card1 extends StatelessWidget{
  const Card1({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext buildContext){
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          ),
        ),
        child:  Column(
          children: [
             const AuthorCard(
              authorName: 'MR. AG',
              title:'Smoothie Guava',
              imageProvider: AssetImage('assets/images/R.png')
             ),
            Expanded(
                child: Stack(
                  children: [
                    Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text('Recipe' , style: FooderLichTheme.lightTextTheme.displayLarge,),),
                    Positioned(
                      bottom: 70,
                        left: 16,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text('Smoothies',style: FooderLichTheme.lightTextTheme.displayLarge,),
                    ))
                  ],
            )),

          ],
        ),
        
      ),
    );
  }
}