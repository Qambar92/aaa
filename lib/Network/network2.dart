import 'package:aaa/Network/Post_m.dart';
import 'package:aaa/Network/emp_Respons.dart';
import 'package:aaa/pages/log_servis.dart';
import 'package:aaa/pages/post_madel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'http2.dart';

class Network2 extends StatefulWidget {
  static final String id = "network2";

  const Network2({super.key});

  @override
  State<Network2> createState() => _Network2State();
}

class _Network2State extends State<Network2> {
  var isLoading=false;
  String data ="";

  var items=[];

  @override
  void initState() {
    super.initState();
    var Emp = Employee(employeeName: "sdsd", employeeSalary: "PDP", employeeAge: 34, );
   // var post = PostLar(id: 10, title: "PDP", body: "Online", userId: 6);
    var pos = EmpResponse(status: "ddfdfdf,",data: [Emp],message: "mmm");
     _apiPostList();
    // _apiPostCreate(pos);
    //_apiPostUpdate(post);
   // _apiPostDelete(post);
  }

  void _apiPostList() async{
    setState(() {
      isLoading=true;
    });
    var response = await Network.GET(Network.API_List, Network.paramsEmty());
    if(response != null){
      setState(() {
        isLoading = false;
        items = Network.parsePostLarList(response);
      });
    };
  }
  void _showRespons(String response){
    setState(() {
      data = response;
    });
  }


  void _apiPostCreate(EmpResponse pos) {
    Network.POST(Network.API_CREATE, Network.paramsCreate(pos))
        .then((response) => {
      LogService.i(response.toString()),
    });
  }

  void _apiPostUpdate(PostLar post) {
    Network.PUT(
        Network.API_UPDATE + post.id.toString(), Network.paramsUpdate(post))
        .then((response) => {
      LogService.i(response.toString()),
    });
  }

  void _apiPostDelete(PostLar post) {
    Network.DELETE(
        Network.API_DELETE + post.id.toString(), Network.paramsEmty())
        .then((response) => {
       _apiPostList()
    });
  }



  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Nettwork"),
      ),
      body: Stack(
        children: [
          ListView.builder(
             itemCount: items.length,
              itemBuilder: (ctx,index)=> itemHomePost(items[index])),
          isLoading ? Center(
            child: CircularProgressIndicator(),
          )
              : SizedBox.shrink(),

        ],
      )
    );
  }
  Widget itemHomePost(EmpResponse post){
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.25,
          motion: ScrollMotion(),
        children: [
          SlidableAction(onPressed: (BuildContext contex){
            //_apiPostDelete(pos);
            // Delete api
          },
          flex: 3,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: "Delete",)
        ],
      ),
        child: Container(
         padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.status!.toUpperCase(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(height: 5,),
              Text(post.data.toString())
            ],
          ),
        )
    );

  }

}
