import 'dart:core';
class Recipe {
  int servings;
  List<Ingredient> ingredients;
  String label ;
  String imageUrl ;

  Recipe(this.label , this.imageUrl,this.servings,this.ingredients);

  static List <Recipe > samples =
  [
    Recipe(
      'Samosa',
      'assets/images/samosa.bak.jpg',
      4,
      [
        Ingredient(3, 'medium-sized', 'Potatoes, boiled, peeled, and mashed'),
        Ingredient(1, 'cup', 'Green Peas'),
        Ingredient(1, 'small', 'Onion, finely chopped'),
        Ingredient(1, '', 'Green Chili, finely chopped'),
        Ingredient(0.5, 'teaspoon', 'Cumin Seeds'),
        Ingredient(2, 'cups', 'All-Purpose Flour'),
      ]
    ),
    Recipe(
        'Gujarati Thali',
        'assets/images/gujrati.bak.jpg',
        4,
        [
          Ingredient(1, 'cup', 'Dhokla'),
          Ingredient(1, 'cup', 'Khandvi'),
          Ingredient(1, 'cup', 'Gujarati Kadhi'),
          Ingredient(1, 'cup', 'Bhakri'),
          Ingredient(0.5, 'cup', 'Gujarati Sev Tameta Shaak'),
          Ingredient(0.5, 'cup', 'Srikhand'),
        ]
    ) ,
    Recipe(
        'Idli',
        'assets/images/idli.bak.jpg',
        8,
        [
          Ingredient(2, 'cups', 'Idli Rice'),
          Ingredient(1, 'cup', 'Urad Dal'),
          Ingredient(1, 'teaspoon', 'Fenugreek Seeds'),
        ]
    ),
    Recipe(
        'Medu Vada',
        'assets/images/menduvada.bak.jpg',
        6,
        [
          Ingredient(1, 'cup', 'Urad Dal'),
          Ingredient(0.5, 'cup', 'Rava (Semolina)'),
          Ingredient(1, 'teaspoon', 'Cumin Seeds'),
          Ingredient(1, '', 'Green Chili, chopped'),
        ]
    ),
    Recipe(
        'Vegetable Biryani',
        'assets/images/vegbiriyani.bak.jpg',
        6,
        [
          Ingredient(2, 'cups', 'Basmati Rice'),
          Ingredient(1, 'cup', 'Mixed Vegetables'),
          Ingredient(1, 'cup', 'Paneer, cubed'),
          Ingredient(1, 'cup', 'Yogurt'),
          Ingredient(1, 'teaspoon', 'Biryani Masala'),
        ]
    ),
    Recipe(
        'Bread Balls',
        'assets/images/bread.bak.jpg',
        4,
        [
          Ingredient(6, 'slices', 'Bread, crumbled'),
          Ingredient(1, 'cup', 'Potatoes, boiled and mashed'),
          Ingredient(0.5, 'cup', 'Carrots, grated'),
          Ingredient(0.25, 'cup', 'Green Peas, boiled'),
          Ingredient(1, 'teaspoon', 'Garam Masala'),
        ]
    )


  ] ;
}

class Ingredient {
  double quantity ;
  String measure ;
  String name ;
  Ingredient(this.quantity, this.measure,this.name);

}