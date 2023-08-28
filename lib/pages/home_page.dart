import 'package:aaa/pages/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static final String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future _openDetail()async{
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext contex){
          return new DetailPage(input: "Pdp Online");
        }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: (){
         // Navigator.pushNamed(context, DetailPage.id);
          _openDetail();
        },
        child: Container(
          height: 30,
            width: 150,
          child: Text("DetailPage"),
          color: Colors.blue,
        ),),
      ),
    );
  }
}
