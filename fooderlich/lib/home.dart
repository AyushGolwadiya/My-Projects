import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card0.dart';
import 'card1.dart';
import 'card2.dart';

class Home extends StatefulWidget{
  const Home({Key ? key})  : super(key : key);
  @override
  _HomeState createState() => _HomeState() ;
}

class _HomeState extends State<Home> {
  int _selectedItem = 0 ;
  static List<Widget> pages = <Widget>[
    const Card0(),
    const Card1(),
    const Card2(),
    Container(color: Colors.blue.shade400,),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedItem = index ;
    });
  }
  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedItem,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: FaIcon(Icons.card_giftcard),
              label:'Card0'
          ),
          const BottomNavigationBarItem(
              icon: FaIcon(Icons.card_giftcard),
              label:'Card1'
          ),
          const BottomNavigationBarItem(
              icon: FaIcon(Icons.card_giftcard),
              label:'Card2'
          ),
        ],
      ),
    );
  }
}