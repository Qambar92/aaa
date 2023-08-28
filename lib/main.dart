import 'package:aaa/pages/detail_page.dart';
import 'package:aaa/pages/home_page.dart';
import 'package:aaa/pages/UI_Home.dart';
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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,

      ),
      home: UI_Home(),
      routes: {
        HomePage.id :(contex) => HomePage(),
        DetailPage.id :(context)=>DetailPage(input: '',),
        UI_Home.id:(context)=>UI_Home(),
      },

    );
  }
}
