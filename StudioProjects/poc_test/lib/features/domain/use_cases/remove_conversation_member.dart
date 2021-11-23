import 'package:poc_test/features/domain/repo/repo.dart';

class RemoveConversationMember{
  final ChatRemoterepo repo;
  RemoveConversationMember(this.repo);
  Future call(int ConversationGroupID, ConversationGroupMemberDtos)async {
    return await repo.RemoveConversationMember(ConversationGroupID,ConversationGroupMemberDtos);
  }
 }