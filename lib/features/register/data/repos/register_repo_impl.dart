import 'package:atw_project/features/register/data/repos/register_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepoImpl implements RegisterRepo {
  @override
  Future<void> loginUser({required String email,required String password}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw FirebaseAuthException(
          code: 'ERROR_LOGIN_FAILED', message: e.toString());
    }
  }
}
