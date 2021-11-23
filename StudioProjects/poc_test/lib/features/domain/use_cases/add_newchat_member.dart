import 'package:poc_test/features/domain/repo/repo.dart';

class AddNewChatMemberUseCase {
  final ChatRemoterepo repo;
  AddNewChatMemberUseCase(this.repo);
  Future call(int ConversationGroupID,int CreatedBy, int ConversationGroupMemberDtos)async {
    return await repo.addConversationMember(ConversationGroupID, CreatedBy, ConversationGroupMemberDtos);
  }
}
