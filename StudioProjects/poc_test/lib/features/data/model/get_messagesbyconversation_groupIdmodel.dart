import 'dart:convert';

import 'CommenModel.dart';


class Datumgroup extends CommenModel{
  Datumgroup({
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
  MessageText messageText;
  int senderUserProfileId;
  int conversationGroupId;
  int projectId;
  int microserviceId;
  dynamic calculatedTime;
  dynamic otherUserProfileId;
  List<ChatMemberDto> chatMemberDtos;
  dynamic attachmentDtos;
  int createdBy;
  DateTime creationDate;
  dynamic modifiedBy;
  dynamic modificationDate;

  factory Datumgroup.fromJson(Map<String, dynamic> json) => Datumgroup(
    messageId: json["MessageID"],
    messageText: messageTextValues.map[json["MessageText"]],
    senderUserProfileId: json["SenderUserProfileID"],
    conversationGroupId: json["ConversationGroupID"],
    projectId: json["ProjectID"],
    microserviceId: json["MicroserviceID"],
    calculatedTime: json["CalculatedTime"],
    otherUserProfileId: json["OtherUserProfileID"],
    chatMemberDtos: List<ChatMemberDto>.from(json["ChatMemberDtos"].map((x) => ChatMemberDto.fromJson(x))),
    attachmentDtos: json["AttachmentDtos"],
    createdBy: json["CreatedBy"],
    creationDate: DateTime.parse(json["CreationDate"]),
    modifiedBy: json["ModifiedBy"],
    modificationDate: json["ModificationDate"],
  );

  Map<String, dynamic> toJson() => {
    "MessageID": messageId,
    "MessageText": messageTextValues.reverse[messageText],
    "SenderUserProfileID": senderUserProfileId,
    "ConversationGroupID": conversationGroupId,
    "ProjectID": projectId,
    "MicroserviceID": microserviceId,
    "CalculatedTime": calculatedTime,
    "OtherUserProfileID": otherUserProfileId,
    "ChatMemberDtos": List<dynamic>.from(chatMemberDtos.map((x) => x.toJson())),
    "AttachmentDtos": attachmentDtos,
    "CreatedBy": createdBy,
    "CreationDate": creationDate.toIso8601String(),
    "ModifiedBy": modifiedBy,
    "ModificationDate": modificationDate,
  };
}

class ChatMemberDto {
  ChatMemberDto({
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

  factory ChatMemberDto.fromJson(Map<String, dynamic> json) => ChatMemberDto(
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

enum MessageText { HELLO, MESSAGE_TEXT_HELLO }

final messageTextValues = EnumValues({
  "Hello ": MessageText.HELLO,
  "Hello": MessageText.MESSAGE_TEXT_HELLO
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
