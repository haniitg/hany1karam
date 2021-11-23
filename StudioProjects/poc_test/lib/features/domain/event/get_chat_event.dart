
import 'package:flutter/cupertino.dart';
import 'package:poc_test/core/utils/signalr_helper.dart';
 import 'package:rxdart/rxdart.dart';


class GetChatEventUseCase {
 BehaviorSubject<Object> dateVaule ;
 call({@required int chatID}){
  SignalRHelper().listen("GetChat_${chatID}", (List<Object> parameters) {
   parameters.forEach((element) {
    print(element.toString());
    dateVaule.sink.add(element);
   });
   print("GetChat ->>");
  });
 }
}