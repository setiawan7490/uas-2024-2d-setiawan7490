import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/provider/profile_provider.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            const SizedBox(height: 16),
            _buildSection('Video preference', profileProvider.videoPreferences),
            const SizedBox(height: 16),
            _buildSection('Account Settings', profileProvider.accountSettings),
            const SizedBox(height: 16),
            _buildSection('Account Settings', profileProvider.aboutOptions),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text('Log Out', style: TextStyle(color: Colors.red)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<dynamic> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...options.map((option) => ListTile(
              title: Text(option.title),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                // Handle option tap
              },
            )),
      ],
    );
  }
}
