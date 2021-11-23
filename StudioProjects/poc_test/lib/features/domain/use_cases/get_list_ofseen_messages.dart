import 'package:poc_test/features/data/repository/chat_repo_implemnt.dart';
import 'package:poc_test/features/domain/repo/repo.dart';

class Getlistofseenmessages {
  final ChatRemoterepo repo;
  Getlistofseenmessages(this.repo);
  Future call(id)async {
    return await repo.getlistofseenmessages(id);
  }
}
