import '../models/signin_model.dart';

class SignInProvider {
  SignInModel getInitialData() {
    return SignInModel(
      name: "",
      email: "",
      password: "",
      confirmPassword: "",
    );
  }
}
