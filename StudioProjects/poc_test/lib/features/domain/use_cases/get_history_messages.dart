import 'package:poc_test/features/domain/repo/repo.dart';

class GetHistoryMessages {
  final ChatRemoterepo repo;
  GetHistoryMessages(this.repo);
  Future call(int ConversationGroupID,int ProjectID, int MicroserviceID, int SenderUserProfileID,int UserProfileID)async {
    return await repo.getHistoryMessages(ConversationGroupID,ProjectID,MicroserviceID,SenderUserProfileID,UserProfileID);
  }
}
