import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

// Remaining code remains the same...


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  static List<Widget> screens = <Widget>[
    Container(
      color: Colors.blue,
    ),
    Container(
        color: Colors.yellow
    ),
    Container(
      color: Colors.green,
    ),
  ];

  void _onItemTapped(int index) {
    print("Tapped on item with index: $index");
    setState(() {
      _selectedItem = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
      ),
      body: SafeArea(
        child: screens[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
            label:'Explore'
          ),
          BottomNavigationBarItem(
              label:"Recipes"
              ,icon: Icon(Icons.food_bank)),
          BottomNavigationBarItem(label:"To Buy",icon: Icon(Icons.list))
        ],
      ),
    );
  }
}
