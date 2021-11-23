import 'package:poc_test/core/utils/signalr_helper.dart';
import 'package:poc_test/features/domain/repo/repo.dart';


class AddConversationMemberUseCase {
  final ChatRemoterepo repo;
  AddConversationMemberUseCase(this.repo);
  Future call(int ConversationGroupID,int CreatedBy, ConversationGroupMemberDtos)async {
    return await repo.addConversationMember(ConversationGroupID, CreatedBy, ConversationGroupMemberDtos);
  }
}
