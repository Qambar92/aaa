import 'package:aaa/pages/Continer.dart';
import 'package:aaa/pages/GridView_.dart';
import 'package:aaa/pages/Pagewiu.dart';
import 'package:aaa/pages/detail_page.dart';
import 'package:aaa/pages/home_page.dart';
import 'package:aaa/pages/Listview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,



      ),
      home: Continer(),
      routes: {
        HomePage.id :(contex) => HomePage(),
        DetailPage.id :(context)=>DetailPage(input: '',),
        Listview.id:(context)=>Listview(),
        GridVieow.id:(context)=>GridVieow(),
        Pagewiu.id:(context)=>Pagewiu(),
        Continer.id:(context)=>Continer(),
      },

    );
  }
}
