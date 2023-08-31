import 'package:flutter/material.dart';

class GridVieow extends StatefulWidget {

  static final String id="GridVieow";

  const GridVieow({super.key});


  @override
  State<GridVieow> createState() => _GridVieowState();
}

class _GridVieowState extends State<GridVieow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pdp"),
        ),
        drawer: Drawer(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Container(
                  height: 200,
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Full Name",style: TextStyle(color: Colors.black,fontSize: 20)),
                      Text("Email",style: TextStyle(color: Colors.black,fontSize: 20)),

                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 60,
                  color: Colors.amber,
                )
              ],
            ),
          ),
        ),

        body: Container(
          child: GridView.count(crossAxisCount: 2,children: [
            _Rasmtexs(title: "aaa",image: "assets/1.jpg"),
            _Rasmtexs(title: "bbb",image: "assets/2.jpg"),
            _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
            _Rasmtexs(title: "bbb",image: "assets/1.jpg"),
            _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
            _Rasmtexs(title: "bbb",image: "assets/1.jpg"),
            _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
            _Rasmtexs(title: "bbb",image: "assets/1.jpg"),
            _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
            _Rasmtexs(title: "bbb",image: "assets/1.jpg"),
            _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
            _Rasmtexs(title: "bbb",image: "assets/1.jpg")
          ],)

        )
    );
  }

  Widget _Rasmtexs({title,image}){
    return Container(
      padding:  EdgeInsets.all(20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image(
              //width: 100,
             // height: 100,
             // fit: BoxFit.cover,
              image: AssetImage(image)),
          SizedBox(width: 20,height: 10,),
          Text(title)
        ],
      ),
    );
  }

}
