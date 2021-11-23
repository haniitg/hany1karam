import 'CommenModel.dart';

class DatumaAddConversationMemberModel extends CommenModel {
  DatumaAddConversationMemberModel({
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

  factory DatumaAddConversationMemberModel.fromJson(Map<String, dynamic> json) => DatumaAddConversationMemberModel(
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
