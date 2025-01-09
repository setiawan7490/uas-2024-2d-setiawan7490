import '/models/signup_model.dart';

class SignUpProvider {
  SignUpModel? _signUpData;

  void saveSignUpData(String name, String email, String password, String confirmPassword) {
    _signUpData = SignUpModel(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

  SignUpModel? getSignUpData() {
    return _signUpData;
  }
}
