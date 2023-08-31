import 'package:flutter/material.dart';


class Continer extends StatefulWidget {
  static final String id = "Continer";
  const Continer({super.key});

  @override
  State<Continer> createState() => _ContinerState();
}

class _ContinerState extends State<Continer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 250,
            width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage("assets/1.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.1),
                ]
              )
            ),
          ),
        ),
      )
    );
  }
}
