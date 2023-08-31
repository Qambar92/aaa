import 'package:flutter/material.dart';

class Listview extends StatefulWidget {

  static final String id="Listview";

  const Listview({super.key});


  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
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

      body: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _RowRasmtexs(title: "aaa",image: "assets/2.jpg"),
                _RowRasmtexs(title: "bbb",image: "assets/1.jpg"),
                _RowRasmtexs(title: "aaa",image: "assets/2.jpg"),
                _RowRasmtexs(title: "bbb",image: "assets/1.jpg"),
                _RowRasmtexs(title: "aaa",image: "assets/2.jpg"),
                _RowRasmtexs(title: "bbb",image: "assets/1.jpg")
              ],
            ),
          ),
          _Rasmtexs(title: "aaa",image: "assets/1.jpg"),
          _Rasmtexs(title: "bbb",image: "assets/2.jpg"),
          _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
          _Rasmtexs(title: "bbb",image: "assets/1.jpg"),
          _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
          _Rasmtexs(title: "bbb",image: "assets/1.jpg"),
          _Rasmtexs(title: "aaa",image: "assets/2.jpg"),
          _Rasmtexs(title: "bbb",image: "assets/1.jpg")

        ],
      )
    );
  }

  Widget _Rasmtexs({title,image}){
    return Container(
      padding:  EdgeInsets.all(20),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.center,
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image(
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              image: AssetImage(image)),
          SizedBox(width: 20,),
          Text(title)
        ],
      ),
    );
}
  Widget _RowRasmtexs({title,image}){
    return Container(
      padding:  EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image(
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              image: AssetImage(image)),
          SizedBox(width: 20,),
          Text(title)
        ],
      ),
    );
  }
}




//Text("Full Name",style: TextStyle(color: Colors.black,fontSize: 20)),

//Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//
//                   ],
//                 ),
