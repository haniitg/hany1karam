import 'package:poc_test/features/domain/repo/repo.dart';

class createGroupWithMessage {
  final ChatRemoterepo repo;
  createGroupWithMessage(this.repo);
  Future call(ConversationGroupMemberDtos,String MessageText,int SenderUserProfileID,int ProjectID,int MicroserviceID)async {
    return await repo.createGroupWithMessage(ConversationGroupMemberDtos, MessageText, SenderUserProfileID, ProjectID,MicroserviceID);
  }
}
