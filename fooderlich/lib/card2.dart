import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget{
  const Card2( {Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/mag2.png'),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.book,color: Colors.white,size: 40,),
                  const  SizedBox(
                    height: 8,
                  ),
                  Text('Recipe Trends',
                  style: FooderLichTheme.darkTextTheme.displayMedium,),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: [
                  Chip(label:
                  Text(
                    'Healthy',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                    print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Vegan',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Carrots',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Non Veg',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Italian',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Junk',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Fast Food',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Chinese',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Sweet',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Spicy',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Wheat',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'Greens',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),
                  Chip(label:
                  Text(
                    'LemonGrass',
                    style: FooderLichTheme.darkTextTheme.bodyLarge,),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: (){
                      print('Delete');
                    },
                  ),

                ],
              ),
            )
      
          ],
        ),
      ),
    );
  }
}