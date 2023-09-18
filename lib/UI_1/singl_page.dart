import 'package:flutter/material.dart';

class Singl_Page extends StatefulWidget {

  final String rasm;
  final String narx;
  final String avtorrasm;
  final String Tema;
  final String ismavtor;
  final String yili;
  final String korish;
  final String Obunachi;

  const Singl_Page({super.key, required this.rasm, required this.narx, required this.avtorrasm, required this.Tema, required this.ismavtor, required this.yili, required this.korish, required this.Obunachi});



  @override
  State<Singl_Page> createState() => _Singl_PageState();
}

class _Singl_PageState extends State<Singl_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABC"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(widget.rasm), fit: BoxFit.cover),
          ),),
        ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [

                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.Tema,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [

                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              widget.yili+" yil",
                              style:
                              TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              widget.korish+" ko'rildi",
                              style:
                              TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            SizedBox(
                              width: 15,
                            ),

                            Text(
                             "  Yana  > ",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 12,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(height: 5,color: Colors.grey,),

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                       // mainAxisAlignment: MainAxisAlignment.end,



                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(widget.avtorrasm), fit: BoxFit.cover),
                              )),
                          SizedBox(
                            width: 20,
                          ),

                          Text(
                            widget.ismavtor,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 235, 4, 4),
                                fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,

                          ),

                          Text(
                           widget.Obunachi+ "  Obunachi ",
                            style:
                            TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                             // mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(" "),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Obuna Bo'lish",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                  ),
                                ),
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
          ),
          Divider(height: 3,color: Colors.grey,),




          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Talabalar",style: TextStyle(color: Colors.white,fontSize: 14),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Chat",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("PlayList",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Sotib Olish ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
