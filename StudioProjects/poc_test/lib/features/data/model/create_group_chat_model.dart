import 'dart:convert';

import 'CommenModel.dart';


class DataCreateGroupChat extends CommenModel{
  DataCreateGroupChat({
    this.conversationGroupId,
    this.defaultDesc,
    this.lastMessage,
    this.usersCanLeaveGroup,
    this.readOnly,
    this.projectId,
    this.microserviceId,
    this.keyRefId,
    this.conversationGroupTypeId,
    this.conversationGroupMemberDtos,
    this.createdby,
    this.creationdate,
    this.modifiedby,
    this.modificationdate,
  });

  int conversationGroupId;
  String defaultDesc;
  DateTime lastMessage;
  int usersCanLeaveGroup;
  int readOnly;
  int projectId;
  int microserviceId;
  String keyRefId;
  int conversationGroupTypeId;
  List<ConversationGroupMemberDto> conversationGroupMemberDtos;
  int createdby;
  DateTime creationdate;
  dynamic modifiedby;
  dynamic modificationdate;

  factory DataCreateGroupChat.fromJson(Map<String, dynamic> json) => DataCreateGroupChat(
    conversationGroupId: json["ConversationGroupID"],
    defaultDesc: json["DefaultDesc"],
    lastMessage: DateTime.parse(json["LastMessage"]),
    usersCanLeaveGroup: json["UsersCanLeaveGroup"],
    readOnly: json["ReadOnly"],
    projectId: json["ProjectID"],
    microserviceId: json["MicroserviceID"],
    keyRefId: json["KeyRefID"],
    conversationGroupTypeId: json["ConversationGroupTypeID"],
    conversationGroupMemberDtos: List<ConversationGroupMemberDto>.from(json["ConversationGroupMemberDtos"].map((x) => ConversationGroupMemberDto.fromJson(x))),
    createdby: json["CREATEDBY"],
    creationdate: DateTime.parse(json["CREATIONDATE"]),
    modifiedby: json["MODIFIEDBY"],
    modificationdate: json["MODIFICATIONDATE"],
  );

  Map<String, dynamic> toJson() => {
    "ConversationGroupID": conversationGroupId,
    "DefaultDesc": defaultDesc,
    "LastMessage": lastMessage.toIso8601String(),
    "UsersCanLeaveGroup": usersCanLeaveGroup,
    "ReadOnly": readOnly,
    "ProjectID": projectId,
    "MicroserviceID": microserviceId,
    "KeyRefID": keyRefId,
    "ConversationGroupTypeID": conversationGroupTypeId,
    "ConversationGroupMemberDtos": List<dynamic>.from(conversationGroupMemberDtos.map((x) => x.toJson())),
    "CREATEDBY": createdby,
    "CREATIONDATE": creationdate.toIso8601String(),
    "MODIFIEDBY": modifiedby,
    "MODIFICATIONDATE": modificationdate,
  };
}

class ConversationGroupMemberDto {
  ConversationGroupMemberDto({
    this.conversationGroupId,
    this.userProfileId,
    this.exitGroupDate,
    this.lastSeen,
    this.lastCheck,
    this.createdby,
    this.creationdate,
    this.modifiedby,
    this.modificationdate,
  });

  int conversationGroupId;
  int userProfileId;
  DateTime exitGroupDate;
  DateTime lastSeen;
  DateTime lastCheck;
  int createdby;
  DateTime creationdate;
  dynamic modifiedby;
  dynamic modificationdate;

  factory ConversationGroupMemberDto.fromJson(Map<String, dynamic> json) => ConversationGroupMemberDto(
    conversationGroupId: json["ConversationGroupID"],
    userProfileId: json["UserProfileID"],
    exitGroupDate: DateTime.parse(json["ExitGroupDate"]),
    lastSeen: DateTime.parse(json["LastSeen"]),
    lastCheck: DateTime.parse(json["LastCheck"]),
    createdby: json["CREATEDBY"],
    creationdate: DateTime.parse(json["CREATIONDATE"]),
    modifiedby: json["MODIFIEDBY"],
    modificationdate: json["MODIFICATIONDATE"],
  );

  Map<String, dynamic> toJson() => {
    "ConversationGroupID": conversationGroupId,
    "UserProfileID": userProfileId,
    "ExitGroupDate": exitGroupDate.toIso8601String(),
    "LastSeen": lastSeen.toIso8601String(),
    "LastCheck": lastCheck.toIso8601String(),
    "CREATEDBY": createdby,
    "CREATIONDATE": creationdate.toIso8601String(),
    "MODIFIEDBY": modifiedby,
    "MODIFICATIONDATE": modificationdate,
  };
}
