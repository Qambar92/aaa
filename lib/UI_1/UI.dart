import 'dart:ffi';

import 'package:aaa/UI_1/asosiy_menu.dart';
import 'package:flutter/material.dart';

class UI extends StatefulWidget {
  static final String id = "UI";

  const UI({super.key});

  @override
  State<UI> createState() => _UIState();
}

class _UIState extends State<UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("ABC",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
         backgroundColor: Colors.blue,
         centerTitle: true,
         actions: [
           IconButton(
            icon: Icon(Icons.add_alert,size:25,color:Colors.white),
               onPressed: null)

         ],
       ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.blue.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 65,

                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Ataniyazov",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 35, 5, 15),
                child: Row(

                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                     Icon(Icons.account_circle,color: Colors.blue,size: 35,),
                    SizedBox(width: 5,),
                    Text("Shaxsiy Sahifa",style: TextStyle(color: Colors.black87,fontSize: 24),)
                  ],


                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 5, 15),
                child: Row(

                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.account_balance_wallet,color: Colors.blue,size: 35,),
                    SizedBox(width: 5,),
                    Text("Xamyon",style: TextStyle(color: Colors.black87,fontSize: 24),)
                  ],


                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 5, 15),
                child: Row(

                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.settings,color: Colors.blue,size: 35,),
                    SizedBox(width: 5,),
                    Text("Setting",style: TextStyle(color: Colors.black87,fontSize: 24),)
                  ],


                ),
              ),
            )
          ],
        ),
      ),
      body: Asosiy_Menu(),
     );
  }
}
