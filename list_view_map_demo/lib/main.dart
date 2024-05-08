import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:list_view_map_demo/IntroScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade300),
        useMaterial3: true,
      ),
      home: IntroScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.deepOrangeAccent.shade100,
        child: Text("Hello World!"),
      )
    );
  }
}










class ListViewArrayMultiple extends StatelessWidget{
  var arrData= [
    {
      'name':'Mercedes',
      'model':'Mercedes-Maybach S-Class Limousine',
      'price':'\$ 2,71,700',
    },
    {
      'name':'Mercedes',
      'model':'S-Class Limousine',
      'price':'\$ 1,72,700',
    },
    {
      'name':'Audi',
      'model':'Audi R8',
      'price':'\$ 2,71,700 ',
    },
    {
      'name':'Toyota Supra',
      'model':'Toyota GR SUPRA GT4',
      'price':'\$ 3,41,500',
    },
    {
      'name':'Mercedes',
      'model':'Mercedes-Maybach S-Class Limousine',
      'price':'\$ 2,71,700',
    },
    {
      'name':'Mercedes',
      'model':'S-Class Limousine',
      'price':'\$ 1,72,700',
    },
    {
      'name':'Audi',
      'model':'Audi R8',
      'price':'\$ 2,71,700 ',
    },
    {
      'name':'Toyota Supra',
      'model':'Toyota GR SUPRA GT4',
      'price':'\$ 3,41,500',
    },
    {
      'name':'Mercedes',
      'model':'Mercedes-Maybach S-Class Limousine',
      'price':'\$ 2,71,700',
    },
    {
      'name':'Mercedes',
      'model':'S-Class Limousine',
      'price':'\$ 1,72,703',
    },
    {
      'name':'Audi',
      'model':'Audi R8',
      'price':' \$ 2,71,700 ',
    },
    {
      'name':'Toyota Supra',
      'model':'Toyota GR SUPRA GT4',
      'price':' \$3,41,500',
    },
  ];
  @override
  Widget build(BuildContext context){
    return Container(
      width: 600,
      child: ListView(
        children: arrData.map((e) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.blue.shade50,
                leading:FaIcon(FontAwesomeIcons.car),
                title: Text(e['model'].toString(),style: TextStyle(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                subtitle:Text(e['name'].toString(),style: TextStyle(fontWeight: FontWeight.w200),),
                trailing: Text(e['price'].toString() ,textAlign: TextAlign.end,),
              ),
            )).toList(),
      ),
    );
  }
}
class ListViewArrayDemo extends StatelessWidget{
  var ar = [
    'Audi',
    'BMW',
    'Baleno',
    'Creta',
    'Fortuner'
        'Mustang GT',
    'MG Hector',
    'Mini Cooper',
    'Scorpio',
    'Rolls Royace',
    'Lemo',
    'Ferrari',
    'Mercedes'
  ];
  @override build(BuildContext context){
    return Container(
      child: ListView(
        children: ar.map((e) =>Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(4),
            ),

            child: Center(child: Padding(
                padding:EdgeInsets.all(20),
                child: Text(e))),
          ),
        )
        ).toList(),
      ),
    );
  }
}