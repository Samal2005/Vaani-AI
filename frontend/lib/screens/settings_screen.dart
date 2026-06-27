import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            /// Profile Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFFA8D5BA),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(width: 16),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "vaani.ai@example.com",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            _settingTile(
              icon: Icons.language,
              title: "Language",
              subtitle: "English",
            ),

            _settingTile(
              icon: Icons.sign_language,
              title: "Sign Language",
              subtitle: "Indian Sign Language (ISL)",
            ),

            _settingTile(
              icon: Icons.volume_up_outlined,
              title: "Speech Settings",
              subtitle: "Voice & Speed",
            ),

            _settingTile(
              icon: Icons.text_fields,
              title: "Text Size",
              subtitle: "Medium",
            ),

            _settingTile(
              icon: Icons.download_outlined,
              title: "Offline Mode",
              subtitle: "Download signs for offline use",
            ),

            _settingTile(
              icon: Icons.privacy_tip_outlined,
              title: "Privacy",
              subtitle: "Manage your privacy settings",
            ),

            _settingTile(
              icon: Icons.help_outline,
              title: "Help & Support",
              subtitle: "FAQs and contact us",
            ),

            const SizedBox(height: 24),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFE8E6FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(0xFFB59CEB),
                    size: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Thank you for using Vaani-AI",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Every Gesture Has A Voice ❤️",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _settingTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}