import 'package:poc_test/features/domain/repo/repo.dart';

class GetChatmembersbyconversationgroupid{
  final ChatRemoterepo repo;
  GetChatmembersbyconversationgroupid(this.repo);
  Future call(int ConversationGroupID, int UserProfileID,int MessageID,int id)async {
    return await repo.getChatmembersbyconversationgroupid(ConversationGroupID,UserProfileID,MessageID,id);
  }
}