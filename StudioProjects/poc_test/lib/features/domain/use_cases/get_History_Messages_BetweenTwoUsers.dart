import 'package:poc_test/features/domain/repo/repo.dart';

class GetHistoryMessageBetweenTwoUsers {
  final ChatRemoterepo repo;
  GetHistoryMessageBetweenTwoUsers(this.repo);
  Future call(id,indetifier)async {
    return await repo.getHistoryMessagesBetweenTwoUsers(id,indetifier);
  }
}
