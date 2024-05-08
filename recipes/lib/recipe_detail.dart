import 'package:recipes/recipe.dart';
import 'package:recipes/main.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget{
  final Recipe recipe;

  const RecipeDetail({Key? key,required this.recipe,}) :super(key:key) ;
  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail>{
  int _sliderVal = 1 ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children:<Widget> [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(widget.recipe.imageUrl),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(widget.recipe.label,style: const TextStyle(fontSize: 18),),
            Expanded(
                child:ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount:widget.recipe.ingredients.length,
                  itemBuilder: (context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(' ${ingredient.quantity * _sliderVal}  ${ingredient.measure} ${ingredient.name} ');
                } ,)
            ),
            Slider(
              min: 1,
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              max: 10,
              divisions: 10,
              label: '${_sliderVal*widget.recipe.servings} Serving',
              value: _sliderVal.toDouble(),
              onChanged: (newVal){
                setState(() {
                  _sliderVal = newVal.round();
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}