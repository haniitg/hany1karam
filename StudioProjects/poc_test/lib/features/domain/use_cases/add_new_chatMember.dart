import 'package:poc_test/features/domain/repo/repo.dart';

class AddNewChatMember {
  final ChatRemoterepo repo;
  AddNewChatMember(this.repo);
  Future call(int ConversationGroupID, int UserProfileID,int MessageID,int CreatedBy)async {
    return await repo.addNewChatMember( ConversationGroupID,  UserProfileID, MessageID, CreatedBy);
  }
}