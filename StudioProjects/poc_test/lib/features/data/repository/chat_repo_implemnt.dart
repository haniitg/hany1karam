import 'package:poc_test/core/base/base_datasource.dart';
import 'package:poc_test/core/base/baseurl.dart';
import 'package:poc_test/features/data/model/CommenModel.dart';
import 'package:poc_test/features/data/model/add_conversation_memberModel.dart';
import 'package:poc_test/features/data/model/create_group_chat_model.dart';
import 'package:poc_test/features/data/model/create_group_withmessage_model.dart';
import 'package:poc_test/features/data/model/get_Llst_ofUnSeen_messages.dart';
import 'package:poc_test/features/data/model/get_history_messages_between_two_users.dart';
import 'package:poc_test/features/data/model/get_list_of_latest_seen_messages.dart';
import 'package:poc_test/features/data/model/get_messagesbyconversation_groupIdmodel.dart';
import 'package:poc_test/features/data/model/send_message_to_group_chat_model.dart';
import 'package:poc_test/features/domain/repo/repo.dart';
import 'package:rxdart/rxdart.dart';

class CahtRepoImplemtion extends BaseDataSource implements ChatRemoterepo {
    @override
  Future<BehaviorSubject<Datumgroup>> getMessages(int groupid,int ConversationGroupID,int ProjectID,int MicroserviceID,int SenderUserProfileID,int UserProfileID) async{
     BehaviorSubject<Datumgroup> dateVaule = BehaviorSubject<Datumgroup>();
     await getData(url: get_Message(groupid), query:{'ConversationGroupID':ConversationGroupID,'ProjectID':ProjectID,'MicroserviceID':MicroserviceID,'SenderUserProfileID':SenderUserProfileID,'UserProfileID':UserProfileID}).then((value) {
       dateVaule.sink.add(Datumgroup.fromJson(value.data));
     }).catchError((error){
       print(error.toString());
     });
     return dateVaule;
  }
   @override
  Future<BehaviorSubject<DatumHistoryMessages>> getHistoryMessagesBetweenTwoUsers(id,indetifier) async{
    BehaviorSubject<DatumHistoryMessages> dateVaulegetHistory = BehaviorSubject<DatumHistoryMessages>();
    await getData(url: gethistoryMessagesBetweenTwoUsers(id,indetifier)).then((value) {
      dateVaulegetHistory.sink.add(DatumHistoryMessages.fromJson(value.data));
    }).catchError((error){
      print(error.toString());
    });
    return dateVaulegetHistory;
  }
  @override
  Future<BehaviorSubject<DatumListOfSeenMessages>> getlistofseenmessages(int id) async{
    BehaviorSubject<DatumListOfSeenMessages> dateVaulegetlistofseen = BehaviorSubject<DatumListOfSeenMessages>();
    // TODO: implement getlistofunseenmessages
    await getData(url: seenMessage(id)).then((value) {
      // dateVaulegetlistofseen.sink.add(value.data);
      dateVaulegetlistofseen.sink.add(DatumListOfSeenMessages.fromJson(value.data));
    }).catchError((error){
      print(error.toString());
    });
    return dateVaulegetlistofseen;
  }
  @override
  Future<BehaviorSubject<DatumListOfUnSeenMessages>> getlistofunseenmessages(int id) async{
    BehaviorSubject<DatumListOfUnSeenMessages> dateVaulegetlistofunseenmessages = BehaviorSubject<DatumListOfUnSeenMessages>();
    // TODO: implement getlistofunseenmessages
    await getData(url: unseenMessage(id)).then((value) {
       dateVaulegetlistofunseenmessages.sink.add(DatumListOfUnSeenMessages.fromJson(value.data));
    }).catchError((error){
      print(error.toString(),);
    });
    return dateVaulegetlistofunseenmessages;
  }
  @override
  Future<BehaviorSubject<DataSendMessageToGroup>> sendMessageToGroupBetweenTwoUsers(int ConversationGroupID,int SenderUserProfileID, String MessageText) async{
    BehaviorSubject<DataSendMessageToGroup> dateVaulegetsendMessageToGroup = BehaviorSubject<DataSendMessageToGroup>();
    // TODO: implement sendMessageToGroupBetweenTwoUsers
    await postData(url: sendmessageGroup,query:{'ConversationGroupID':ConversationGroupID,'SenderUserProfileID':SenderUserProfileID,'MessageText':MessageText} ).then((value) {
      dateVaulegetsendMessageToGroup.sink.add(DataSendMessageToGroup.fromJson(value.data));
     }).catchError((error){
      print(error.toString());
    });
    return dateVaulegetsendMessageToGroup;
  }
  @override
  Future<BehaviorSubject<CommenModel>> RemoveConversationMember(int ConversationGroupID, ConversationGroupMemberDtos) async{
    BehaviorSubject<CommenModel> dateVaulegeRemoveConversationMemberModel = BehaviorSubject<CommenModel>();
    await postData(url: remove_msg,query:{'ConversationGroupID':ConversationGroupID,'ConversationGroupMemberDtos':[{
      "ConversationGroupID":ConversationGroupMemberDtos,
    }]} ).then((value) {
        dateVaulegeRemoveConversationMemberModel.sink.add(CommenModel.fromJson(value.data));
    }).catchError((error){
      print(error.toString());
    });
    return dateVaulegeRemoveConversationMemberModel;
  }
   @override
  Future<BehaviorSubject<DatumaAddConversationMemberModel>> addConversationMember(int ConversationGroupID, int CreatedBy,  ConversationGroupMemberDtos) async{
    BehaviorSubject<DatumaAddConversationMemberModel> dateVaulegeaddConversationMemberModel = BehaviorSubject<DatumaAddConversationMemberModel>();
    await postData(url: add_conversationmember,query:{'ConversationGroupID':ConversationGroupID,'ConversationGroupMemberDtos':[{
    "ConversationGroupID":ConversationGroupMemberDtos,
    }],"CreatedBy":CreatedBy} ).then((value) {
        dateVaulegeaddConversationMemberModel.sink.add(DatumaAddConversationMemberModel.fromJson(value.data));
     }).catchError((error){
      print(error.toString());
    });
    return dateVaulegeaddConversationMemberModel;
  }

  @override
  Future<BehaviorSubject<DataCreateGroupChat>> createGroupChat(int ConversationGroupID, String DefaultDesc,int ConversationGroupMemberDtos,int ConversationGroupMemberDtos2,int UsersCanLeaveGroup,
      int ReadOnly,int ProjectID,int MicroserviceID,String KeyRefID,int ConversationGroupTypeID,int CreatedBy) async{
    BehaviorSubject<DataCreateGroupChat> dateVaulegecreateGroupChatModel = BehaviorSubject<DataCreateGroupChat>();
    await postData(url: create_group_chat,query:{'ConversationGroupID':ConversationGroupID,'ConversationGroupMemberDtos':[{
    "UserProfileID":ConversationGroupMemberDtos,"UserProfileID":ConversationGroupMemberDtos2
    }],"DefaultDesc":DefaultDesc,"UsersCanLeaveGroup":UsersCanLeaveGroup,"ReadOnly":ReadOnly,"ProjectID":ProjectID,"MicroserviceID":MicroserviceID,"KeyRefID":KeyRefID,"ConversationGroupTypeID":ConversationGroupTypeID
    ,"CreatedBy":CreatedBy} ).then((value) {
      dateVaulegecreateGroupChatModel.sink.add(DataCreateGroupChat.fromJson(value.data));
     }).catchError((error){
      print(error.toString());
    });
    return dateVaulegecreateGroupChatModel;
  }

  @override
  Future<BehaviorSubject<DataCreateGroup>> createGroupWithMessage(ConversationGroupMemberDtos,String MessageText,int SenderUserProfileID,int ProjectID,int MicroserviceID) async{
    BehaviorSubject<DataCreateGroup> dateVaulegecreateGroupWithMessageModel = BehaviorSubject<DataCreateGroup>();
    // TODO: implement createGroupWithMessage
    await postData(url: chat_createGroupWithMessage,query:{'ConversationGroupMemberLst':[{
    "UserProfileID":ConversationGroupMemberDtos
    }],"MessageText":MessageText,"SenderUserProfileID":SenderUserProfileID,"ProjectID":ProjectID,"MicroserviceID":MicroserviceID} ).then((value) {
        dateVaulegecreateGroupWithMessageModel.sink.add(DataCreateGroup.fromJson(value.data));

    }).catchError((error){
      print(error.toString());
    });
    return dateVaulegecreateGroupWithMessageModel;
   }
  @override
  Future<BehaviorSubject<CommenModel>> getHistoryMessages(int ConversationGroupID, int ProjectID, int MicroserviceID, int SenderUserProfileID, int UserProfileID) async{
    BehaviorSubject<CommenModel> dateVaulegetHistoryMessagesModel = BehaviorSubject<CommenModel>();
    // TODO: implement getHistoryMessages
    await postData(url: chat_gethistoryMessages,query:{'ConversationGroupID':ConversationGroupID,"ProjectID":ProjectID,"MicroserviceID":MicroserviceID,"SenderUserProfileID":SenderUserProfileID,"UserProfileID":UserProfileID} ).then((value) {
       dateVaulegetHistoryMessagesModel.sink.add(CommenModel.fromJson(value.data));
     }).catchError((error){
      print(error.toString());
    });
    return dateVaulegetHistoryMessagesModel;
  }
  @override
  Future<BehaviorSubject<Object>> ChatmemberSeenMessage(int ConversationGroupID, int UserProfileID, int MessageID) async{
    BehaviorSubject<Object> dateVauleChatmemberSeenMessageModel = BehaviorSubject<Object>();
    // TODO: implement ChatmemberSeenMessage
    await postData(url: chatmember_seensendmessage,query:{'ConversationGroupID':ConversationGroupID,"UserProfileID":UserProfileID,"MessageID":MessageID} ).then((value) {
       dateVauleChatmemberSeenMessageModel.sink.add(value.data);
    }).catchError((error){
      print(error.toString());
    });
    return dateVauleChatmemberSeenMessageModel;
  }
  @override
  Future<BehaviorSubject<Object>> addNewChatMember(int ConversationGroupID, int UserProfileID, int MessageID,int CreatedBy) async{
    BehaviorSubject<Object> dateVauleaddNewChatMemberModel = BehaviorSubject<Object>();
    // TODO: implement addNewChatMember
    await postData(url: addNewchatmember,query:{'ConversationGroupID':ConversationGroupID,"UserProfileID":UserProfileID,"MessageID":MessageID,"CreatedBy":CreatedBy} ).then((value) {
       dateVauleaddNewChatMemberModel.sink.add(value.data);
    }).catchError((error){
      print(error.toString());
    });
    return dateVauleaddNewChatMemberModel;
  }
  @override
  Future<BehaviorSubject<Object>> getChatmembersbyconversationgroupid(int ConversationGroupID, int UserProfileID, int MessageID,int id) async {
    BehaviorSubject<Object> dateVaulegetChatmembersModel = BehaviorSubject<Object>();
    await getData(url: chatMember_getChatmembersbyconversationgroupiD(id),query:{'ConversationGroupID':ConversationGroupID,"UserProfileID":UserProfileID,"MessageID":MessageID} ).then((value) {
       dateVaulegetChatmembersModel.sink.add(value.data);
    }).catchError((error){
      print(error.toString());
    });
    return dateVaulegetChatmembersModel;
  }


}