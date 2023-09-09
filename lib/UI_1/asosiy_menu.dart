import 'package:flutter/material.dart';

class Asosiy_Menu extends StatefulWidget {
  const Asosiy_Menu({super.key});

  @override
  State<Asosiy_Menu> createState() => _Asosiy_MenuState();
}

class _Asosiy_MenuState extends State<Asosiy_Menu> {

  myWidget(String rasmlar) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 80,
          height: 79,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            image:
            DecorationImage(image: AssetImage(rasmlar), fit: BoxFit.cover),
            border: Border.all(width: 5, color: Colors.red.shade700),
          ),
        ),
      ),
    );
  }

  List<String> rasmlar = [
    "assets/2.jpg",
    "assets/6.jpg",
    "assets/7.jpg",
    "assets/8.jpg",
    "assets/1.jpg",
    "assets/5.jpg"
    "assets/4.jpg"
  ];

  List<String> narxlar = [
    "200",
    "400",
    "500",
    "600",
    "700",
    "800",
    "1000"
  ];

  maxsulatlar(String rasm, narx) {
    return Expanded(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(rasm),fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.blue.shade100,
                          child: Text("$narx so\'m",style: TextStyle(color: Colors.black,fontSize: 25),),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(1),
            height: 101,
            color: Colors.blue.shade50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                myWidget("assets/3.jpeg"),
                myWidget("assets/4.jpg"),
                myWidget("assets/5.jpg"),
                myWidget("assets/6.jpg"),
                myWidget("assets/7.jpg"),
              ],
            ),
          ),
          Divider(
            height: 2.3,
            color: Colors.blue,
          ),
          Container(
            //color: Colors.blue,
            child: Text(
              "Bo\'limlar",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 2.3,
            color: Colors.blue,
          ),
          Container(
            height: 60,
            // color: Colors.blue.shade50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade100,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Yangi",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade100,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Eski",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade100,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "AAA",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade100,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BBBBB",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade100,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "CCCC",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade100,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "DDDD",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  maxsulatlar(rasmlar[4], narxlar[6]),
                 // maxsulatlar(rasmlar[5], narxlar[5])
                ],
              ),
              Row(
                children: [
                  maxsulatlar(rasmlar[0], narxlar[0]),
                  maxsulatlar(rasmlar[1], narxlar[1])
                ],
              ),
              Row(
                children: [
                  maxsulatlar(rasmlar[2], narxlar[2]),
                  maxsulatlar(rasmlar[3], narxlar[3])
                ],
              ),
              Row(
                children: [
                  maxsulatlar(rasmlar[4], narxlar[4]),
                  maxsulatlar(rasmlar[0], narxlar[5])
                ],
              ),

            ],
          )

        ],
      ),
    );
  }
}
