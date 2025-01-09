import 'package:flutter/material.dart';
import 'package:template_project/models/profile_model.dart';

class ProfileController {
  List<ProfileOption> getVideoPreferences() {
    return [
      ProfileOption(title: 'Download Option'),
      ProfileOption(title: 'Video playback options'),
    ];
  }

  List<ProfileOption> getAccountSettings() {
    return [
      ProfileOption(title: 'Account Security'),
      ProfileOption(title: 'Email Notification Preferences'),
      ProfileOption(title: 'Learning Reminders'),
    ];
  }

  List<ProfileOption> getAboutOptions() {
    return [
      ProfileOption(title: 'About Learnout'),
      ProfileOption(title: 'Frequently Asked Questions'),
      ProfileOption(title: 'Share the Learnout App'),
    ];
  }
}
