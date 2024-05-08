import 'package:flutter/material.dart';
import 'package:ui_design_1/my_style.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      height: 100,
      decoration: const BoxDecoration(
          color: Color(0xffbcc3ff),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))
      ),
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text('Profile',style:titleTextStyle),
          Icon(Icons.search,size: 30.0,),
        ],
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:const EdgeInsets.only(top: 115),
      width: double.infinity,
      height: 350,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))
      ),
      child:const Column(
        children: [
          CircleAvatar(radius: 35),
          SizedBox(height: 10,),
          Text('Ayush Golwadiya',style: headingName,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on ,size: 16.0,color: Colors.grey,),
              Text("Viramgam",style: TextStyle(color: Colors.grey,fontSize: 16.0),)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('897',style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),),
                  Text('Posts',style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(width: 30,),
              Column(
                children: [
                  Text('8493',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  Text('Followers',style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(width: 30,),
              Column(
                children: [
                  Text('182',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                  Text('Following',style: TextStyle(color: Colors.grey),)
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 370.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30.0),
            height: 150,
            width: double.infinity,
            color: Color(0xffffffff),
          ),
          const Row(
            children: [
              Text('Intro to Flutter')],)
        ],
      ),
    );
  }
}



