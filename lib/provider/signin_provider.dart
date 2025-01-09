import '/models/signin_model.dart';
import '/models/signup_model.dart';
import 'signup_provider.dart';

class SignInProvider {
  final SignUpProvider signUpProvider;

  SignInProvider(this.signUpProvider);

  bool validateSignIn(String email, String password) {
    final signUpData = signUpProvider.getSignUpData();
    if (signUpData != null &&
        signUpData.email == email &&
        signUpData.password == password) {
      return true;
    }
    return false;
  }
}
