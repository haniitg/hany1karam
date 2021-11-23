import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'baseurl.dart';

class BaseDataSource {
  Dio dio;
  var bsaeurl;
  BaseDataSource({this.bsaeurl =baseurl, this.dio}){
    dio =
        Dio(
        BaseOptions(
            baseUrl: bsaeurl,
            receiveDataWhenStatusError: true
        )
    );
  }
  Future<Response> getData({String url,@required Map<String,dynamic> query}) async {
    log("getData -> URL -> $url");
     Response response = await dio.get(url,queryParameters: query,options: Options(headers: {"Content-Type": "application/json"},validateStatus: (_)=>true),);
    log("getData -> response -> $response");
    log("getData -> query -> $query");
     return  response;
  }
  Future<Response> postData({String url,@required Map<String,dynamic> query}) async {
    Response response = await dio.post(url,data: query, options: Options(headers: {"Content-Type": "application/json"},validateStatus: (_)=>true),);
    return response ;
  }


}