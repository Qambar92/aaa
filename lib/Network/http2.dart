import 'dart:convert';
import 'dart:core';

import 'package:aaa/Network/emp_Respons.dart';
import 'package:aaa/pages/log_servis.dart';

import 'package:http/http.dart';

import 'Post_m.dart';




class Network{
  static String BASE = "dummy.restapiexample.com";
  static Map<String,String> headers ={'Content-type': 'application/json; charset=UTF-8'};

  /*  Http Apis */
  static String API_List = "/api/v1/employees";
  static String API_Get_User = "/api/v1/employee/"; //id
  static String API_CREATE = "/api/v1/create";
  static String API_UPDATE = "/api/v1/update/"; //Id
  static String API_DELETE = "/api/v1/delete/"; //id

  /*  Http Requests */

  static Future<String?>GET(String api,Map<String,String>params)async{
    var uri = Uri.https(BASE,api,params);
    var response = await get(uri);
    if(response.statusCode == 200){
      return response.body;
    }
    return null;
  }

  static Future<String?>POST(String api,Map<String,String>params)async{
    var uri = Uri.https(BASE,api);
    var response = await post(uri,body: jsonEncode(params));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }
    return null;
  }

  static Future<String?>PUT(String api,Map<String,String>params)async{
    var uri = Uri.https(BASE,api);
    var respons = await put(uri,body: jsonEncode(params));
    if(respons.statusCode == 200 || respons.statusCode == 202){
      return respons.body;
    }
    return null;
  }

  static Future<String?>DELETE(String api,Map<String,String>params)async{
    var uri = Uri.https(BASE,api,params);
    var response = await delete(uri);
    if(response.statusCode == 200){
      return response.body;
    }
    return null;
  }



  /* Http Params */

  static Map<String,String> paramsEmty(){
    Map<String,String> params = Map();
    return params;
  }

  static Map<String,String> paramsCreate(EmpResponse post){
    Map<String,String> params = Map();
    params.addAll({
      'status':post.status!,
      'data': post.data.toString(),
      'message': post.message.toString(),
    });
    return params;
  }

  static Map<String,String> paramsUpdate(PostLar post){
    Map<String,String> params = Map();
    params.addAll({
      'title':post.title!,
      'body': post.body!,
      'userId': post.userId.toString(),
    });
   // LogService.w(params.toString());
    return params;
  }

  /*  Http Parsing */

  static List<EmpResponse> parsePostLarList(String response) {
    dynamic json = jsonDecode(response);
    var data =List<EmpResponse>.from(json.map((x)=>Employee.fromJson(x)));
    return data;
  }
}
