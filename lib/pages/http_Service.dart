import 'dart:convert';

import 'package:aaa/pages/post_madel.dart';
import 'package:http/http.dart';

class Network{
  static String BASE = "jsonplaceholder.typicode.com";
  static Map<String,String> headers ={
    'Content-type': 'application/json; charset=UTF-8'
  };

  /*  Http Apis */
  static String API_List = "/posts";
  static String API_CREATE = "/posts";
  static String API_UPDATE = "/posts/";
  static String API_DELETE = "/posts/";

  /*  Http Requests */

static Future<String?>GET(String api,Map<String,String>params)async{
  var uri = Uri.https(BASE,api,params);
  var response = await get(uri,headers: headers);
  if(response.statusCode == 200){
    return response.body;
  }
  return null;
}

  static Future<String?>POST(String api,Map<String,String>params)async{
    var uri = Uri.https(BASE,api);
    var response = await post(uri,headers: headers,body: jsonEncode(params));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }
    return null;
  }

  static Future<String?>PUT(String api,Map<String,String>params)async{
    var uri = Uri.https(BASE,api);
    var respons = await put(uri,headers: headers,body: jsonEncode(params));
    if(respons.statusCode == 200 || respons.statusCode == 202){
      return respons.body;
    }
    return null;
  }

  static Future<String?>DELETE(String api,Map<String,String>params)async{
    var uri = Uri.https(BASE,api,params);
    var response = await delete(uri,headers: headers);
    if(response.statusCode == 200){
      return response.body;
    }
    return null;
  }

  /*  Http Response */

  /* Http Params */

  static Map<String,String> paramsEmty(){
    Map<String,String> params = Map();
    return params;
  }

  static Map<String,String> paramsCreate(Post post){
    Map<String,String> params = Map();
    params.addAll({
      'title':post.title!,
      'body': post.body!,
      'userId': post.userId.toString(),
    });
    return params;
  }

  static Map<String,String> paramsUpdate(Post post){
    Map<String,String> params = Map();
    params.addAll({
      'title':post.title!,
      'body': post.body!,
      'userId': post.userId.toString(),
    });
    return params;
  }
}

//<uses-permission android:name="android.permission.INTERNET"/>

/*<key>NSAppTransportSecurity</key>
<dict>
<key>NSAllowsArbitraryLoads</key>
<true/>
</dict>*/
