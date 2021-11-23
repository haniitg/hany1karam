import 'package:flutter/material.dart';
import 'package:poc_test/core/utils/signalr_helper.dart';
import 'package:rxdart/rxdart.dart';

class SeenMessageEventUseCase {
   BehaviorSubject<Object> get dateVaule  => _dateVaule;
  BehaviorSubject<Object> _dateVaule = BehaviorSubject<Object>();
  call({@required int loggedInUserProfileId}){
    SignalRHelper().listen("refreshSeenMessage_${loggedInUserProfileId}", (List<Object> parameters) {
      parameters.forEach((element) {
        print(element.toString());
        _dateVaule.sink.add(element);
      });
      print("SeenMessageEvent ->>");
    });
  }
}