import 'package:aaa/Network/network2.dart';

import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {

  static final String id="detail_page";



  @override
  State<DetailPage> createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {

  @override



  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:MaterialButton(
          height: 60,

          color: Colors.blue,

          onPressed: (){
            Navigator.pushNamed(context, Network2.id);
          },
          child: Text("NettWork",style: TextStyle(fontSize: 30,color: Colors.white),),
        )
      ),
    );
  }
}
