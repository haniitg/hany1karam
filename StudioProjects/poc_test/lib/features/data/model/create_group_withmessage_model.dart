import 'dart:convert';

import 'CommenModel.dart';


class DataCreateGroup extends CommenModel{
  DataCreateGroup({
    this.messageId,
    this.messageText,
    this.senderUserProfileId,
    this.conversationGroupId,
    this.projectId,
    this.microserviceId,
    this.calculatedTime,
    this.otherUserProfileId,
    this.chatMemberDtos,
    this.attachmentDtos,
    this.createdBy,
    this.creationDate,
    this.modifiedBy,
    this.modificationDate,
  });

  int messageId;
  String messageText;
  int senderUserProfileId;
  int conversationGroupId;
  int projectId;
  int microserviceId;
  String calculatedTime;
  dynamic otherUserProfileId;
  List<ChatMemberDataCreateGroup> chatMemberDtos;
  List<dynamic> attachmentDtos;
  int createdBy;
  DateTime creationDate;
  dynamic modifiedBy;
  dynamic modificationDate;

  factory DataCreateGroup.fromJson(Map<String, dynamic> json) => DataCreateGroup(
    messageId: json["MessageID"],
    messageText: json["MessageText"],
    senderUserProfileId: json["SenderUserProfileID"],
    conversationGroupId: json["ConversationGroupID"],
    projectId: json["ProjectID"],
    microserviceId: json["MicroserviceID"],
    calculatedTime: json["CalculatedTime"],
    otherUserProfileId: json["OtherUserProfileID"],
    chatMemberDtos: List<ChatMemberDataCreateGroup>.from(json["ChatMemberDtos"].map((x) => ChatMemberDataCreateGroup.fromJson(x))),
    attachmentDtos: List<dynamic>.from(json["AttachmentDtos"].map((x) => x)),
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
    "ProjectID": projectId,
    "MicroserviceID": microserviceId,
    "CalculatedTime": calculatedTime,
    "OtherUserProfileID": otherUserProfileId,
    "ChatMemberDtos": List<dynamic>.from(chatMemberDtos.map((x) => x.toJson())),
    "AttachmentDtos": List<dynamic>.from(attachmentDtos.map((x) => x)),
    "CreatedBy": createdBy,
    "CreationDate": creationDate.toIso8601String(),
    "ModifiedBy": modifiedBy,
    "ModificationDate": modificationDate,
  };
}

class ChatMemberDataCreateGroup {
  ChatMemberDataCreateGroup({
    this.conversationGroupId,
    this.messageId,
    this.userProfileId,
    this.seenFlag,
    this.calculatedTime,
    this.createdby,
    this.creationdate,
    this.modifiedby,
    this.modificationdate,
  });

  int conversationGroupId;
  int messageId;
  int userProfileId;
  int seenFlag;
  dynamic calculatedTime;
  int createdby;
  DateTime creationdate;
  int modifiedby;
  DateTime modificationdate;

  factory ChatMemberDataCreateGroup.fromJson(Map<String, dynamic> json) => ChatMemberDataCreateGroup(
    conversationGroupId: json["ConversationGroupID"],
    messageId: json["MessageID"],
    userProfileId: json["UserProfileID"],
    seenFlag: json["SeenFlag"],
    calculatedTime: json["CalculatedTime"],
    createdby: json["CREATEDBY"],
    creationdate: DateTime.parse(json["CREATIONDATE"]),
    modifiedby: json["MODIFIEDBY"] == null ? null : json["MODIFIEDBY"],
    modificationdate: json["MODIFICATIONDATE"] == null ? null : DateTime.parse(json["MODIFICATIONDATE"]),
  );

  Map<String, dynamic> toJson() => {
    "ConversationGroupID": conversationGroupId,
    "MessageID": messageId,
    "UserProfileID": userProfileId,
    "SeenFlag": seenFlag,
    "CalculatedTime": calculatedTime,
    "CREATEDBY": createdby,
    "CREATIONDATE": creationdate.toIso8601String(),
    "MODIFIEDBY": modifiedby == null ? null : modifiedby,
    "MODIFICATIONDATE": modificationdate == null ? null : modificationdate.toIso8601String(),
  };
}
