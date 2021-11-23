import 'package:flutter/material.dart';
import 'package:poc_test/core/utils/signalr_helper.dart';
import 'package:rxdart/rxdart.dart';


class CountMessageEventUseCase {
  BehaviorSubject<Object> dateVaule ;
  call({@required int loggedInUserProfileId}){
    SignalRHelper().listen("refreshCountMessages${loggedInUserProfileId}", (List<Object> parameters) {
      parameters.forEach((element) {
        print(element);
        dateVaule.sink.add(element);
      });
      print("CountMessage_ ->>");
    });
  }
}