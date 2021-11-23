import 'dart:convert';

import 'CommenModel.dart';



class DataSendMessageToGroup extends CommenModel{
  DataSendMessageToGroup({
    this.messageId,
    this.messageText,
    this.senderUserProfileId,
    this.conversationGroupId,
    this.conversationGroupFk,
    this.chatMemberIc,
    this.attachmentIc,
    this.userNotificationIc,
    this.createdBy,
    this.creationDate,
    this.modifiedBy,
    this.modificationDate,
  });

  int messageId;
  String messageText;
  int senderUserProfileId;
  int conversationGroupId;
  dynamic conversationGroupFk;
  dynamic chatMemberIc;
  dynamic attachmentIc;
  dynamic userNotificationIc;
  int createdBy;
  DateTime creationDate;
  dynamic modifiedBy;
  dynamic modificationDate;

  factory DataSendMessageToGroup.fromJson(Map<String, dynamic> json) => DataSendMessageToGroup(
    messageId: json["MessageID"],
    messageText: json["MessageText"],
    senderUserProfileId: json["SenderUserProfileID"],
    conversationGroupId: json["ConversationGroupID"],
    conversationGroupFk: json["ConversationGroup_FK"],
    chatMemberIc: json["ChatMember_IC"],
    attachmentIc: json["Attachment_IC"],
    userNotificationIc: json["UserNotification_IC"],
    createdBy: json["CreatedBy"],
    creationDate: DateTime.parse(json["CreationDate"]),
    modifiedBy: json["ModifiedBy"],
    modificationDate: json["ModificationDate"],
  );

  Map<String, dynamic> toJson() => {
    "MessageID": messageId,
    "MessageText": messageText,
    "SenderUserProfileID": senderUserProfileId,
    "ConversationGroupID": conversationGroupId,
    "ConversationGroup_FK": conversationGroupFk,
    "ChatMember_IC": chatMemberIc,
    "Attachment_IC": attachmentIc,
    "UserNotification_IC": userNotificationIc,
    "CreatedBy": createdBy,
    "CreationDate": creationDate.toIso8601String(),
    "ModifiedBy": modifiedBy,
    "ModificationDate": modificationDate,
  };
}
