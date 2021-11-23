import 'package:poc_test/features/domain/repo/repo.dart';

class CreateGroupChat{
  final ChatRemoterepo repo;
  CreateGroupChat(this.repo);
  Future call(int ConversationGroupID, String DefaultDesc,int ConversationGroupMemberDtos,int ConversationGroupMemberDtos2,int UsersCanLeaveGroup,
      int ReadOnly,int ProjectID,int MicroserviceID,String KeyRefID,int ConversationGroupTypeID,int CreatedBy)async {
    return await repo.createGroupChat( ConversationGroupID, DefaultDesc,  ConversationGroupMemberDtos,  ConversationGroupMemberDtos2,  UsersCanLeaveGroup,  ReadOnly,  ProjectID,
        MicroserviceID, KeyRefID,ConversationGroupTypeID,CreatedBy);
  }
}