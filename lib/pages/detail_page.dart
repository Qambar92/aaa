import 'package:aaa/pages/http_Service.dart';
import 'package:aaa/pages/post_madel.dart';
import 'package:flutter/material.dart';
import 'package:aaa/pages/network_Page.dart';

class DetailPage extends StatefulWidget {

  static final String id="detail_page";

  //final String input;

 // _DetailPage({required this.input});

 // const DetailPage({super.key,});

  @override
  State<DetailPage> createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {

  @override



  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:MaterialButton(
          color: Colors.blue,
          onPressed: (){
            Navigator.pushNamed(context, Network_Page.id);
          },
          child: Text("NettWork"),
        )
      ),
    );
  }
}
