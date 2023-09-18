import 'dart:convert';

class PostLar{
  int? id;
  String? title;
  String? body;
  int? userId;

  PostLar({this.id,this.title,this.body,this.userId});

  PostLar.fromJson(Map<String,dynamic>json)
      :id = json['id'],
        title = json['title'],
        body = json['body'],
        userId = json['userId'];

  Map<String,dynamic>toJson()=>{
    'id':id,
    'title':title,
    'body':body,
    'userId': userId,

  };
}
