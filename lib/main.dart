import 'dart:io';

import 'package:aaa/pages/Continer.dart';
import 'package:aaa/pages/GridView_.dart';
import 'package:aaa/pages/Pagewiu.dart';
import 'package:aaa/UI_1/UI.dart';
import 'package:aaa/pages/detail_page.dart';
import 'package:aaa/pages/home_page.dart';
import 'package:aaa/pages/Listview.dart';
import 'package:aaa/pages/network_Page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
// await Hive
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
      home: UI(),
      routes: {
        HomePage.id: (contex) => HomePage(),
        DetailPage.id: (context) => DetailPage(),
        Listview.id: (context) => Listview(),
        GridVieow.id: (context) => GridVieow(),
        Pagewiu.id: (context) => Pagewiu(),
        Continer.id: (context) => Continer(),
        Network_Page.id: (context) => Network_Page(),
        UI.id: (context) => UI(),
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
