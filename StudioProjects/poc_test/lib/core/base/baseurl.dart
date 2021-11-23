
const baseurl = "https://192.168.188.20/ITG.RealTime.APIs/api/";

const sendmessageGroup = baseurl + "Chat/SendMessageToGroupChat";

String get_Message(id){
  var get_message = "Chat/GetMessagesByConversationGroupId?GroupId=${id}";
  return get_message;
}

String unseenMessage(id){
  var unseen_message = "Chat/GetListOfUnSeenMessages?LoggedInProfileId=${id}";
  return unseen_message;
}
String seenMessage(id){
  var unseen_message = "Chat/GetListOfLatestSeenMessages?LoggedInProfileId=${id}";
  return unseen_message;
}

String gethistoryMessagesBetweenTwoUsers(id,indetifier){
  var unseen_message = "Chat/GetHistoryMessagesBetweenTwoUsers?LoggedInUserProfileId=${id}&OtherUserProfileId=${indetifier}";
  return unseen_message;
}

const remove_msg = baseurl + "ConversationGroupMember/RemoveConversationMember";

const add_conversationmember = baseurl + "ConversationGroupMember/AddConversationMember";

 const create_group_chat = baseurl + "ConversationGroup/CreateGroupChat";

 const chat_createGroupWithMessage = baseurl + "Chat/CreateGroupWithMessage";

 //Chat/GetHistoryMessages
const chat_gethistoryMessages = baseurl + "Chat/GetHistoryMessages";
//ChatMember/SeenSendMessage
const chatmember_seensendmessage = baseurl + "ChatMember/SeenSendMessage";
//AddNewChatMember
const addNewchatmember = baseurl + "ChatMember/AddNewChatMember";

 String chatMember_getChatmembersbyconversationgroupiD(id){
  var unseen_message = "ChatMember/GetChatMembersByConversationGroupID?GroupId=${id}";
  return unseen_message;
}