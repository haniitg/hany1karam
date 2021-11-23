
import 'package:poc_test/features/data/model/CommenModel.dart';

class DatumHistoryMessages  extends CommenModel {
  DatumHistoryMessages({
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
  List<ChatMemberDto> chatMemberDtos;
  List<AttachmentDto> attachmentDtos;
  int createdBy;
  DateTime creationDate;
  dynamic modifiedBy;
  dynamic modificationDate;

  factory DatumHistoryMessages.fromJson(Map<String, dynamic> json) => DatumHistoryMessages(
    messageId: json["MessageID"],
    messageText: json["MessageText"],
    senderUserProfileId: json["SenderUserProfileID"],
    conversationGroupId: json["ConversationGroupID"],
    projectId: json["ProjectID"],
    microserviceId: json["MicroserviceID"],
    calculatedTime: json["CalculatedTime"],
    otherUserProfileId: json["OtherUserProfileID"],
    chatMemberDtos: List<ChatMemberDto>.from(json["ChatMemberDtos"].map((x) => ChatMemberDto.fromJson(x))),
    attachmentDtos: List<AttachmentDto>.from(json["AttachmentDtos"].map((x) => AttachmentDto.fromJson(x))),
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
    "AttachmentDtos": List<dynamic>.from(attachmentDtos.map((x) => x.toJson())),
    "CreatedBy": createdBy,
    "CreationDate": creationDate.toIso8601String(),
    "ModifiedBy": modifiedBy,
    "ModificationDate": modificationDate,
  };
}

class AttachmentDto {
  AttachmentDto({
    this.attachmentId,
    this.actionId,
    this.messageId,
    this.attachmentFile,
    this.attachmentDirectory,
    this.fileInBase64,
    this.createdby,
    this.creationdate,
    this.modifiedby,
    this.modificationdate,
  });
  int attachmentId;
  dynamic actionId;
  int messageId;
  String attachmentFile;
  String attachmentDirectory;
  dynamic fileInBase64;
  dynamic createdby;
  DateTime creationdate;
  dynamic modifiedby;
  dynamic modificationdate;
  factory AttachmentDto.fromJson(Map<String, dynamic> json) => AttachmentDto(
    attachmentId: json["AttachmentID"],
    actionId: json["ActionID"],
    messageId: json["MessageID"],
    attachmentFile: json["AttachmentFile"],
    attachmentDirectory: json["AttachmentDirectory"],
    fileInBase64: json["FileInBase64"],
    createdby: json["CREATEDBY"],
    creationdate: DateTime.parse(json["CREATIONDATE"]),
    modifiedby: json["MODIFIEDBY"],
    modificationdate: json["MODIFICATIONDATE"],
  );

  Map<String, dynamic> toJson() => {
    "AttachmentID": attachmentId,
    "ActionID": actionId,
    "MessageID": messageId,
    "AttachmentFile": attachmentFile,
    "AttachmentDirectory": attachmentDirectory,
    "FileInBase64": fileInBase64,
    "CREATEDBY": createdby,
    "CREATIONDATE": creationdate.toIso8601String(),
    "MODIFIEDBY": modifiedby,
    "MODIFICATIONDATE": modificationdate,
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
