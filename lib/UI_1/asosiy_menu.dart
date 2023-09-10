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
  List<String> avtorrasm = [
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

  List<String> tema = [
    "Yangi video",
    "Shok video",
    "Yangliklar",
    "Uzbekiston",
    "Kun UZ",
    "Salom",
    "Videolar"
  ];

  List<String> avtor = [
    "Ali",
    "Vali",
    "G'ani",
    "Qani",
    "Jani",
    "Mani",
    "Sani"
  ];

  List<String> yili = [
    "22.01.2023",
    "20.04.2022",
    "06.03.2021",
    "04.05.2022",
    "02.02.2021",
    "23.06.2023",
    "12.12.2022"
  ];


  List<String> korishsoni = [
    "24300",
    "404530",
    "50430",
    "63200",
    "743200",
    "834500",
    "145070"
  ];

  maxsulatlar(String rasm, narx,avtorrasm,Tema,ismavtor,yili,korish) {
    return Expanded(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                height: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage(rasm),fit: BoxFit.cover),
                      ),
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
                    ),
                    SizedBox(height: 10,),

                    Row(
                      children: [
                        Container(
                          height: 50,
                            width: 50,
                           // color: Colors.blue,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image: AssetImage(avtorrasm),fit: BoxFit.cover),
                            )

                        ),
                        SizedBox(width: 15,),

                        Column(
                         // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("$Tema",style: TextStyle(color: Colors.black,fontSize: 25),),
                            SizedBox(height: 2,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Text("$ismavtor",style: TextStyle(color: Colors.black,fontSize: 14),),
                                SizedBox(width: 20,),
                                Text("$yili yil",style: TextStyle(color: Colors.black,fontSize: 12),),
                                SizedBox(width: 15,),
                                Text("$korish ko'rildi",style: TextStyle(color: Colors.black,fontSize: 12),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),


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
                  maxsulatlar(rasmlar[4], narxlar[6],avtorrasm[0],tema[0],avtor[0],yili[0],korishsoni[0]),
                 // maxsulatlar(rasmlar[5], narxlar[5])
                ],
              ),
              Row(
                children: [
                 // maxsulatlar(rasmlar[0], narxlar[0],avtorrasm[1],avtor[3]),
                  maxsulatlar(rasmlar[1], narxlar[1],avtorrasm[2],tema[3],avtor[2],yili[1],korishsoni[3]),
                ],
              ),
              Row(
                children: [
                  maxsulatlar(rasmlar[2], narxlar[2],avtorrasm[3],tema[5],avtor[1],yili[3],korishsoni[1]),
                 // maxsulatlar(rasmlar[3], narxlar[3],avtorrasm[4],avtor[0])
                ],
              ),
              Row(
                children: [
                  maxsulatlar(rasmlar[4], narxlar[4],avtorrasm[2],tema[2],avtor[4],yili[2],korishsoni[3]),
                 // maxsulatlar(rasmlar[0], narxlar[5],avtorrasm[3],avtor[5])
                ],
              ),

            ],
          )

        ],
      ),
    );
  }
}
