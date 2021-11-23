import 'dart:io';
import 'package:flutter/material.dart';
import 'core/utils/signalr_helper.dart';
import 'features/data/repository/chat_repo_implemnt.dart';
import 'features/domain/event/count_message_event.dart';
import 'features/domain/event/refersh_message_event.dart';
import 'features/domain/event/seen_message_event.dart';
import 'features/domain/use_cases/add_conversation_member.dart';
import 'features/domain/use_cases/add_new_chatMember.dart';
import 'features/domain/use_cases/add_newchat_member.dart';
import 'features/domain/use_cases/chatmember_seenmessage.dart';
import 'features/domain/use_cases/createGroup_Chat.dart';
import 'features/domain/use_cases/create_group_withMessage.dart';
import 'features/domain/use_cases/getChatmembersbyconversationgroupid.dart';
import 'features/domain/use_cases/get_History_Messages_BetweenTwoUsers.dart';
import 'features/domain/use_cases/get_history_messages.dart';
import 'features/domain/use_cases/get_list_ofseen_messages.dart';
import 'features/domain/use_cases/get_list_ofunseen_messages.dart';
import 'features/domain/use_cases/get_messages_usecase.dart';
import 'features/domain/use_cases/remove_conversation_member.dart';
import 'features/domain/use_cases/send_MessageTo_GroupBetween_TwoUsers.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  SignalRHelper signalR = new SignalRHelper();
  var object =  CahtRepoImplemtion();
  @override
  void initState() {
    // signalR.connect();
    // signalR.start();
     GetMessegesMemberUseCase(object).call(9,0,1,1,1111,1112);
     GetHistoryMessageBetweenTwoUsers(object).call(43156,43547);
     Getlistofunseenmessages(object).call(43156);
     Getlistofseenmessages(object).call(43156);
     SendMessageToGroupBetweenTwoUsers(object).call(9,1115,"Hello");
     RemoveConversationMember(object).call(1,1113);
    AddConversationMemberUseCase(object).call(1,1111,1113);
    CreateGroupChat(object).call(0,"hi",1115,1114,1,1,1,1,"1",1,1114);
    //  AddNewChatMember(object).call(1, 43547, 1, 43156);
    //  AddNewChatMemberUseCase(object).call(1,111,1113);
    //  ChatmemberSeenMessage(object).call(26,1114,176);
    //  createGroupWithMessage(object).call(1114,"mmmm",43156,1,1);
    //  GetMessegesMemberUseCase(object).call(9,0,1,1,1111,1112);
    //   AddConversationMemberUseCase(object).call(1,1111,1113);
    //  GetHistoryMessages(object).call(0,1,1,1111,1112);
    //  Getlistofseenmessages(object).call(43156);
    //  Getlistofunseenmessages(object).call(43156);
    // //GetMessegesMemberUseCase(object).call(9,0,1,1,1111,1112);
    //  GetChatmembersbyconversationgroupid(object).call(1,1,1112,1);
    //  RemoveConversationMember(object).call(1,1113);
    //  SendMessageToGroupBetweenTwoUsers(object).call(9,1115,"Hello");
    //   SeenMessageEventUseCase().call(loggedInUserProfileId: 1114);
    //  RefreshChatEventUseCase().call(loggedInUserProfileId: 1114);

  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}