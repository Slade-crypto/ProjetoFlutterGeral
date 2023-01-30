import 'package:iuganda/repositories/user_repository_provider.dart';

class UserServiceProvider {
  final UserRepositoryProvider repository;

  UserServiceProvider({required this.repository});

  String getName() => repository.name;
}
