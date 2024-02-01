import 'package:flutter/material.dart';
class Avtor_Page extends StatefulWidget {
  static final String id="Avtor_Page";
 // const Avtor_Page({super.key});



  @override
  State<Avtor_Page> createState() => _Avtor_PageState();
}

class _Avtor_PageState extends State<Avtor_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avtor"),

      ),
      body:  ListView
         (
         children: [
          // SizedBox(height: 5,width: 5,),
           Stack(
             children: [
               Container(
                   height:250,
                   decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                              image: AssetImage("assets/8.jpg"),fit: BoxFit.cover ),
                            ),
                  ),
               Padding(
                 padding:EdgeInsets.fromLTRB(8, 180, 8, 8),
                 child: Expanded(

                   child: Container(
                     height: 200,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(13),
                       color: Colors.grey,
                     ),
                     child: Center(
                       child: Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Row(
                              //  crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Icon(Icons.account_box,color: Colors.white,size: 35,),
                                 SizedBox(height: 10,),
                                 Container(



                                   color: Colors.white,
                                   child: Text("Obunachi",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                 ),

                               ],
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Icon(Icons.video_camera_back_outlined,color: Colors.white,size: 35,),
                                 SizedBox(height: 10,),
                                 SizedBox(height: 10,),
                                 Container(



                                   color: Colors.white,
                                   child: Text("Videolar",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                 ),
                               ],
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Icon(Icons.recommend,color: Colors.white,size: 35,),
                                 SizedBox(height: 10,),
                                 Container(



                                   color: Colors.white,
                                   child: Text("Like",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                 ),

                               ],
                             ),
                           ],

                         ),

                       ),
                     ),




                   ),
                 ),
               ),
               Padding(
                 padding:EdgeInsets.fromLTRB(12,120,12,12),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   //mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                   children: [

                     Padding(
                       padding: EdgeInsets.fromLTRB(5,80,5,5),
                       child: Icon(Icons.email_sharp,color: Colors.white,size: 40,),
                     ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(5,0,5,5),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(180),
                            image: DecorationImage(image: AssetImage("assets/4.jpg"), fit: BoxFit.cover),
                            border: Border.all(width: 5, color: Colors.red.shade700),
                          ),
                        ),
                      ),
                     Padding(
                       padding: EdgeInsets.fromLTRB(5,80,5,5),
                       child: Icon(Icons.video_call,color: Colors.white,size: 50,),
                     ),
                                  ],
                                ),
               ),

             ],),
                ],
              ),

      );

  }
}
