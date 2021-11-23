import 'package:poc_test/features/domain/repo/repo.dart';

class SendMessageToGroupBetweenTwoUsers {
  final ChatRemoterepo repo;
  SendMessageToGroupBetweenTwoUsers(this.repo);
  Future call(int ConversationGroupID,int SenderUserProfileID, String MessageText)async {
    return await repo.sendMessageToGroupBetweenTwoUsers( ConversationGroupID, SenderUserProfileID,  MessageText);
  }
}
