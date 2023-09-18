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
          return new DetailPage();
        }));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            SingleChildScrollView(
              child:Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,

                  ),
                  Container(
                    height: 250,
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 250,
                    width: 200,
                    color: Colors.yellowAccent,
                  ),
                  Container(
                    height: 250,
                    width: 200,
                    color: Colors.green,
                  )
                ],
              ),

            ),


            Container(
              height: 200,
              color: Colors.red,

            ),
            Container(
              height: 250,
              color: Colors.blue,
            ),
            Container(
              height: 250,
              color: Colors.yellowAccent,
            ),
            Container(
              height: 250,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
