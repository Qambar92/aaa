import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {

  static final String id="detail_page";

  final String input;

 // _DetailPage({required this.input});

  const DetailPage({super.key, required this.input});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(widget.input,style: TextStyle(color: Colors.black,),),
      ),
    );
  }
}
