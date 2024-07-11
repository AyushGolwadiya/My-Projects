import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/screens/email_auth/login_screen.dart';
import 'package:firebase_demo/screens/phone_auth/sign_in_phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController  = TextEditingController();
  void logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignInPhone()));
  }

  void deleteUser(String docid){
    FirebaseFirestore.instance.collection('users').doc(docid).delete();
  }

  void saveUser(){
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String ageString = ageController.text.trim();
    int age = int.parse(ageString);
    nameController.clear();
    emailController.clear();
    ageController.clear();
    if (name!="" && email!="" && ageString!=""){
      Map<String,dynamic> userdata = {
        "name":name,
        "email":email,
        "age":age,
      };
      FirebaseFirestore.instance.collection("users").add(userdata);
      log('user saved');
    }
    else {
      log('Please fill all details');
    }
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          IconButton(
              onPressed: () {
                logout();
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email Address'
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  hintText: 'Age',
                ),
              ),
              const SizedBox(height: 10,),
              CupertinoButton(
                onPressed: (){
                  saveUser();
                },
                child: const Text('Save'),
              ),
              const SizedBox(height: 20,),
              StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('users').snapshots(), builder: (context,snapshot){
                if(snapshot.connectionState == ConnectionState.active){
                  if(snapshot.hasData && snapshot.data!=null){
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context,index){
                         Map<String,dynamic> userdata = snapshot.data!.docs[index].data() as Map<String , dynamic>;
                         String docId = snapshot.data!.docs[index].id;
                         return ListTile(
                           title: Text(userdata['name'] + " (${userdata['age']})" ?? ''),
                           subtitle: Text(userdata['email']?? ''),
                           trailing: IconButton(
                             icon: const Icon(Icons.delete),
                           onPressed: (){
                              deleteUser(docId);
                           },),
                         );
                        },
                      ),
                    );
                  }else {
                    return Text('Data not found');
                  }
                }
                else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),

            ],
          ),
        ),
      ),
    );
  }
}
