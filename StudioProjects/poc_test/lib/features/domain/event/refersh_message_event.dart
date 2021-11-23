 import 'dart:developer';
 import 'package:flutter/material.dart';
import 'package:poc_test/core/utils/signalr_helper.dart';
import 'package:poc_test/features/data/model/refresh_chat_event_model.dart';
import 'package:rxdart/rxdart.dart';

class RefreshChatEventUseCase {
  BehaviorSubject<RefreshChatEventModel> get dateVaule  => _dateVaule;
  BehaviorSubject<RefreshChatEventModel> _dateVaule = BehaviorSubject<RefreshChatEventModel>();
  call({@required int loggedInUserProfileId}){
    SignalRHelper().listen("refreshMessages_${loggedInUserProfileId}", (List<Object> parameters) {
      parameters.forEach((element) {
        log("""${element}""");
         _dateVaule.sink.add(element);
      });
     });
  }
}
