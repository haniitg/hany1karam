import 'dart:developer';
import 'package:signalr_client/hub_connection.dart';
import 'package:signalr_client/hub_connection_builder.dart';

class SignalRHelper{
  static final SignalRHelper _singleton = SignalRHelper._internal();

  factory SignalRHelper() {
    return _singleton;
  }
  SignalRHelper._internal();

  var url = 'https://192.168.188.20/ITG.RealTime.APIs/RealTimeSignalRServer';

  setUrl(var url){
    this.url=url;
  }
  HubConnection hubConnection;
  var messageList = <dynamic>[];
  String textMessage='';
  void connect() {
    log("connect");
    hubConnection = HubConnectionBuilder().withUrl(url).build();
  }
  start(){
    hubConnection.start();
  }
  void onClose() {
    hubConnection.onclose((error) {
      log('Connection Close');
    });
  }
  String call(String p1) {
    final result= hubConnection.invoke('SendMessage', args:<Object>["ParameterValue"]);
    log("Result: '$result");
  }
  listen(String event, Function action){
    hubConnection.on(event, action);
  }
}