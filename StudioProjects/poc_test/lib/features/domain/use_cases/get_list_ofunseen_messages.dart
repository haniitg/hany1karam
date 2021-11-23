import 'package:poc_test/features/domain/repo/repo.dart';

class Getlistofunseenmessages {
  final ChatRemoterepo repo;
  Getlistofunseenmessages(this.repo);
  Future call(id)async {
    return await repo.getlistofunseenmessages(id);
  }
}