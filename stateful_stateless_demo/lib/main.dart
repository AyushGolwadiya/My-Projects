import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>  MyHomePageState() ;

}
class MyHomePageState extends State<MyHomePage>{
  var  no1Controller = TextEditingController();
  var  no2Controller = TextEditingController();
  var count = 0;
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful vs Stateless Widgets'),
      ),
      body:Center(
        child: Container(
          width: 500,
          height: 500,
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
              ),
                  TextField(
                    controller: no2Controller,
                    keyboardType:TextInputType.number
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var sum = no1+no2 ;

                          result = "Sum of $no1 and $no2 is $sum";

                          setState(() {

                          });


                        }, child: Text('ADD')),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var sub = no1-no2 ;

                          result = "Substraction of $no1 and $no2 is $sub";

                          setState(() {

                          });
                        }, child: Text('SUB')),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var mul = no1*no2 ;

                          result = "Multiplication of $no1 and $no2 is $mul";

                          setState(() {

                          });
                        }, child: Text('MUL')),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var div = no1/no2 ;

                          result = "Divison of $no1 and $no2 is ${div.toStringAsFixed(2)}";

                          setState(() {

                          });
                        }, child: Text('DIV')),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(21),
                  child: Text( result,style: TextStyle(fontSize: 40),),)
                ],
              ),
            ),
          ),
        ),
      )
    );
    }

}

class StateFulExample extends StatelessWidget {
  var count = 0;
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text('Count :$count'
            ,style: TextStyle(fontSize: 40),),
          ElevatedButton(
            onPressed: (){
              count++;
              print(count);
            },
            child: Text('Increment Count'),
          )
        ],
      ),
    );
  }
}



