import 'package:flutter/material.dart';


class Pagewiu extends StatefulWidget {

  static final String id = "Pagewiu";


  const Pagewiu({super.key});



  @override
  State<Pagewiu> createState() => _PagewiuState();
}

class _PagewiuState extends State<Pagewiu> {

  late PageController _pageController;
  int _selectedPage=0;


  @override
  void initState(){
    super.initState();
    _pageController=PageController();
  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Pdp",)),
       body: PageView(
         controller: _pageController,
         onPageChanged: (int index){
           setState(() {
             _selectedPage=index;
           });
         },
        children: [
          Container(

            color: Colors.blue.shade200,
            child: Center(
              child: Text("Page 1"),
            ),

          ),
          Container(

            color: Colors.green.shade200,
            child: Center(
              child: Text("Page 2"),
            ),

          ),
          Container(

            color: Colors.red.shade200,
            child: Center(
              child: Text("Page 3"),
            ),

          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo),label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),],
        currentIndex: _selectedPage,
          selectedItemColor: Colors.amber[800],
          onTap: (int index){
          setState(() {
            _selectedPage=index;
            _pageController.animateToPage(index, duration: Duration(microseconds: 20), curve: Curves.easeIn);
          });
    },
        ),



    );
  }
}
