import 'package:poc_test/features/domain/repo/repo.dart';

class GetMessegesMemberUseCase {
  final ChatRemoterepo repo;
  GetMessegesMemberUseCase(this.repo);
  Future call(int groupid,int ConversationGroupID,int ProjectID,int MicroserviceID,int SenderUserProfileID,int UserProfileID)async {
    return await repo.getMessages( groupid, ConversationGroupID, ProjectID, MicroserviceID, SenderUserProfileID, UserProfileID);
  }
}
