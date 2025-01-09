import 'package:flutter/material.dart';
import '/controller/profile_controller.dart';
import '/models/profile_model.dart';

class ProfileProvider extends ChangeNotifier {
  final ProfileController _controller = ProfileController();

  List<ProfileOption> get videoPreferences => _controller.getVideoPreferences();
  List<ProfileOption> get accountSettings => _controller.getAccountSettings();
  List<ProfileOption> get aboutOptions => _controller.getAboutOptions();
}
