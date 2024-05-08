import 'package:date_picker_demo/widgets_helper/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      //   useMaterial3: true,
      //   textTheme: TextTheme(
      //     displayLarge: TextStyle(fontWeight: FontWeight.w300,fontSize: 20 ,color: Colors.black) ,
      //   ),
      // ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var arrColors = [Colors.black ,Colors.green,Colors.blue,Colors.lightGreen,Colors.brown] ;
  callBack(){
    print('Hello i am from Callback function');
  }
  TextStyle myTxt(){
    return TextStyle(
      fontStyle: FontStyle.italic ,
      fontWeight: FontWeight.w500,
      color: Colors.black ,
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        color:Colors.black,
        child:Stack(
          children: [
            Positioned(
              left: 20,
              bottom: 20,
              top: 20,
              right: 20,
              child: Container(
                color: Colors.white,
                width: 200,
                height: 200,
              ),
            )
          ],
        ) ,
      )
    );
  }
}
class FontAwesomeExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_business_rounded,size: 200,
            color: Colors.grey,),
          FaIcon(FontAwesomeIcons.amazon,size: 200,)
        ],
      ),
    );
  }
}
class RichTextExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w100 , fontSize: 30,),
              children: <TextSpan> [
                TextSpan(text: 'Hello  '),
                TextSpan(text: 'World ! ',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700,color: Colors.blue)),
                TextSpan(text: 'Welcome to '),
                TextSpan(text:'Flutter ',style:TextStyle(
                  fontFamily: 'Popins',
                  fontWeight: FontWeight.bold,
                  fontSize:70 ,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepOrangeAccent,
                ))
              ]
          ),
        ),
      ),
    );
  }
}
class SizedBoxExample extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){
    return  Center(
      child: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 300,
            child: ElevatedButton(
              onPressed: (){

              },
              child: Text('Click'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
              ),

            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox.square(
            dimension: 300,
            child: ElevatedButton(
              onPressed: (){

              },
              child: Text('Click'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
              ),

            ),
          ),
        ],
      ),
    );
  }
}
class WrapExample extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.greenAccent,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blueGrey,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.redAccent,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.grey,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blueGrey,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.deepPurpleAccent,
          )
        ],
      ),
    );
  }
}
class CatItem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.white60,
            ),
          ),
        ),itemCount: 30,scrollDirection: Axis.horizontal,),
      ),
    );
  }

}
class CatItem2 extends StatelessWidget {
  @override
  Widget  build(BuildContext context){
    return Expanded(
      flex: 3,
      child: Container(
        height: 200,
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white60,
            ),
            title: Text('My Name'),
            subtitle: Text('Mobile No'),
          ),
        ) ,itemCount: 20,),
      ),
    );
  }
}
class CatItem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        color: Colors.yellow,
        child: ListView.builder(itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11) ,
                color: Colors.white60,
                border: Border.all(width: 2 , color: Colors.black )
            ),
          ),
        ),itemCount: 10,scrollDirection: Axis.horizontal,),
      ),
    );
  }
}
class CatItem4 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: Container(
          height: 200,
          color: Colors.blueGrey,
          child: GridView.count(crossAxisCount: 4,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11) ,
                      color: Colors.white60,
                      border: Border.all(width: 2 , color: Colors.black )
                  ),
                ),
              ),
            ],)
      ),
    );
  }
}


