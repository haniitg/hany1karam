import 'dart:convert';

RefreshChatEventModel refreshChatEventModelFromJson(String str) => RefreshChatEventModel.fromJson(json.decode(str));

String refreshChatEventModelToJson(RefreshChatEventModel data) => json.encode(data.toJson());

class RefreshChatEventModel {
  RefreshChatEventModel({
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
  List<ChatrefreshChatEventModel> chatMemberDtos;
  List<dynamic> attachmentDtos;
  int createdBy;
  DateTime creationDate;
  dynamic modifiedBy;
  dynamic modificationDate;

  factory RefreshChatEventModel.fromJson(Map<String, dynamic> json) => RefreshChatEventModel(
    messageId: json["MessageID"],
    messageText: json["MessageText"],
    senderUserProfileId: json["SenderUserProfileID"],
    conversationGroupId: json["ConversationGroupID"],
    projectId: json["ProjectID"],
    microserviceId: json["MicroserviceID"],
    calculatedTime: json["CalculatedTime"],
    otherUserProfileId: json["OtherUserProfileID"],
    chatMemberDtos: List<ChatrefreshChatEventModel>.from(json["ChatMemberDtos"].map((x) => ChatrefreshChatEventModel.fromJson(x))),
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

class ChatrefreshChatEventModel  {
  ChatrefreshChatEventModel({
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
  dynamic modifiedby;
  dynamic modificationdate;

  factory ChatrefreshChatEventModel.fromJson(Map<String, dynamic> json) => ChatrefreshChatEventModel(
    conversationGroupId: json["ConversationGroupID"],
    messageId: json["MessageID"],
    userProfileId: json["UserProfileID"],
    seenFlag: json["SeenFlag"],
    calculatedTime: json["CalculatedTime"],
    createdby: json["CREATEDBY"],
    creationdate: DateTime.parse(json["CREATIONDATE"]),
    modifiedby: json["MODIFIEDBY"],
    modificationdate: json["MODIFICATIONDATE"],
  );

  Map<String, dynamic> toJson() => {
    "ConversationGroupID": conversationGroupId,
    "MessageID": messageId,
    "UserProfileID": userProfileId,
    "SeenFlag": seenFlag,
    "CalculatedTime": calculatedTime,
    "CREATEDBY": createdby,
    "CREATIONDATE": creationdate.toIso8601String(),
    "MODIFIEDBY": modifiedby,
    "MODIFICATIONDATE": modificationdate,
  };
}
