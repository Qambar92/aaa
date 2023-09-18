import 'package:aaa/pages/log_servis.dart';
import 'package:aaa/pages/post_madel.dart';
import 'package:flutter/material.dart';

import 'http_Service.dart';

class Network_Page extends StatefulWidget {
  static final String id = "network_page";

  const Network_Page({super.key});

  @override
  State<Network_Page> createState() => _Network_PageState();
}

class _Network_PageState extends State<Network_Page> {
  @override
  void initState() {
    super.initState();
    var post = Post(id: 1, title: "PDP", body: "Online", userId: 1);
   // _apiGetList();
    // _apiPostCreate(post);
    //_apiPostUpdate(post);
    _apiPostDelete(post);
  }

  void _apiGetList() {
    Network.GET(Network.API_List, Network.paramsEmty()).then((response) => {
          LogService.i(response.toString()),
        });
  }


  void _apiPostCreate(Post post) {
    Network.POST(Network.API_CREATE, Network.paramsCreate(post))
        .then((response) => {
              LogService.i(response.toString()),
            });
  }

  void _apiPostUpdate(Post post) {
    Network.PUT(
            Network.API_UPDATE + post.id.toString(), Network.paramsUpdate(post))
        .then((response) => {
              LogService.i(response.toString()),
            });
  }

  void _apiPostDelete(Post post) {
    Network.DELETE(
            Network.API_DELETE + post.id.toString(), Network.paramsEmty())
        .then((response) => {
              LogService.i(response.toString()),
            });
  }

  void _showResponse() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nettwork"),
      ),
      body: Center(),
    );
  }
}
