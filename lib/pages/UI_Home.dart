import 'package:flutter/material.dart';
class UI_Home extends StatefulWidget {

  static final String id="UI_Home";

  const UI_Home({super.key});


  @override
  State<UI_Home> createState() => _UI_HomeState();
}

class _UI_HomeState extends State<UI_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("UI_Page"),
      ),
    );
  }
}
