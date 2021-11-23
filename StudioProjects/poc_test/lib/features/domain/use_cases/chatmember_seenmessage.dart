import 'package:poc_test/features/domain/repo/repo.dart';

class ChatmemberSeenMessage{
  final ChatRemoterepo repo;
  ChatmemberSeenMessage(this.repo);
  Future call(int ConversationGroupID, int UserProfileID,int MessageID)async {
    return await repo.ChatmemberSeenMessage(ConversationGroupID,UserProfileID,MessageID);
  }
}