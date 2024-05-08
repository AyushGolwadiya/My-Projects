import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget{
  // 1
  final String authorName ;
  final String title ;
  final ImageProvider? imageProvider ;

  const AuthorCard( { Key? key , required this.authorName , required this.title, this.imageProvider}):super(key : key);

  // 2
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleImage(imageProvider: imageProvider,imageRadius: 28,),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(authorName,style: FooderLichTheme.lightTextTheme.displayMedium,) ,
                Text(title,style: FooderLichTheme.lightTextTheme.displaySmall,),
              ],
            ),
          ],
          ),
          IconButton(onPressed: (){
            const snackBar = SnackBar(content: Text('Favorite Added'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, icon: const Icon(Icons.favorite_border,color: Colors.grey,))
        ],
      ),
    );
  }
}