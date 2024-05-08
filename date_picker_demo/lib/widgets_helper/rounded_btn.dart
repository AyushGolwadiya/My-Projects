import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btn_name ;
  final Icon? icon ;
  final Color? bg_color ;
  final TextStyle? textStyle ;
  final VoidCallback? callback ;
  RoundedButton({
      this.textStyle , required this.btn_name ,
      this.bg_color = Colors.blue ,
      this.icon ,
      this.callback }) ;
  @override
Widget build(BuildContext context){
    return ElevatedButton(onPressed: (){
      callback!();
    }, child: icon!=null ?
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon! ,
        Container(
          width:5
        ),
        Text(
          btn_name ,style: textStyle,
        )
      ],)
        : Text(
      btn_name ,style: textStyle,
    ) ,
    style: ElevatedButton.styleFrom(
        foregroundColor: bg_color ,
      shadowColor: bg_color,
      shape : RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      )
    ),
    );
  }
}