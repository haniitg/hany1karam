import 'package:poc_test/features/data/model/CommenModel.dart';
import 'package:poc_test/features/data/model/add_conversation_memberModel.dart';
 import 'package:poc_test/features/data/model/create_group_chat_model.dart';
import 'package:poc_test/features/data/model/create_group_withmessage_model.dart';
import 'package:poc_test/features/data/model/get_Llst_ofUnSeen_messages.dart';
 import 'package:poc_test/features/data/model/get_history_messages_between_two_users.dart';
import 'package:poc_test/features/data/model/get_list_of_latest_seen_messages.dart';
 import 'package:poc_test/features/data/model/get_messagesbyconversation_groupIdmodel.dart';
import 'package:poc_test/features/data/model/send_message_to_group_chat_model.dart';
 import 'package:rxdart/rxdart.dart';

   abstract class ChatRemoterepo {
     Future<BehaviorSubject<Datumgroup>> getMessages(int groupid,int ConversationGroupID,int ProjectID,int MicroserviceID,int SenderUserProfileID,int UserProfileID);
     Future<BehaviorSubject<DatumHistoryMessages>> getHistoryMessagesBetweenTwoUsers(int id,int indetifier);
     Future<BehaviorSubject<DatumListOfUnSeenMessages>> getlistofunseenmessages(int id);
     Future<BehaviorSubject<DatumListOfSeenMessages>> getlistofseenmessages(int id);
     Future<BehaviorSubject<DataSendMessageToGroup>> sendMessageToGroupBetweenTwoUsers(int ConversationGroupID,int SenderUserProfileID, String MessageText);
     Future<BehaviorSubject<DataCreateGroupChat>> createGroupChat(int ConversationGroupID, String DefaultDesc,int ConversationGroupMemberDtos,int ConversationGroupMemberDtos2,int UsersCanLeaveGroup,
         int ReadOnly,int ProjectID,int MicroserviceID,String KeyRefID,int ConversationGroupTypeID,int CreatedBy);
     Future<BehaviorSubject<CommenModel>> getHistoryMessages(int ConversationGroupID,int ProjectID, int MicroserviceID, int SenderUserProfileID,int UserProfileID);
     Future<BehaviorSubject<DatumaAddConversationMemberModel>>addConversationMember(int ConversationGroupID,int CreatedBy, int ConversationGroupMemberDtos);
     Future<BehaviorSubject<DataCreateGroup>> createGroupWithMessage(ConversationGroupMemberDtos,String MessageText,int SenderUserProfileID,int ProjectID,int MicroserviceID);
     Future<BehaviorSubject<CommenModel>>RemoveConversationMember(int ConversationGroupID, ConversationGroupMemberDtos);
     Future<BehaviorSubject<Object>>ChatmemberSeenMessage(int ConversationGroupID, int UserProfileID,int MessageID);
     Future<BehaviorSubject<Object>>addNewChatMember(int ConversationGroupID, int UserProfileID,int MessageID,int CreatedBy);
     Future<BehaviorSubject<Object>>getChatmembersbyconversationgroupid(int ConversationGroupID, int UserProfileID,int MessageID,int id);
}
