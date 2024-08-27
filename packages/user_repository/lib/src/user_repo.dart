import 'models/user.dart';

abstract class UserRepository {
  Stream<MyUser> get user;

  Future<void> update(MyUser user);

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser user);

  Future<void> signIn(String email, String password);

  Future<void> logout();

  Future<void> deleteAccount();
}
