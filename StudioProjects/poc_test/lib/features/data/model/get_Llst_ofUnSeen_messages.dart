import 'dart:convert';

import 'CommenModel.dart';



class DatumListOfUnSeenMessages extends CommenModel{
  DatumListOfUnSeenMessages({
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
  String calculatedTime;
  dynamic createdby;
  DateTime creationdate;
  dynamic modifiedby;
  dynamic modificationdate;

  factory DatumListOfUnSeenMessages.fromJson(Map<String, dynamic> json) => DatumListOfUnSeenMessages(
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
