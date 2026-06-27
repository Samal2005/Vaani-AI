import 'package:flutter/material.dart';
import 'sign_to_speech_screen.dart';
import 'speech_to_sign_screen.dart';
import 'conversation_screen.dart';
import 'phrases_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EF),
        elevation: 0,
        title: const Text(
          "Vaani-AI",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SettingsScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Greeting
            const Text(
              "Hello 👋",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Welcome to Vaani-AI",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            /// Hero Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFEDE3FA),
                    Color(0xFFF4EEFF),
                  ],
                ),
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Icon(
                    Icons.record_voice_over,
                    size: 50,
                    color: Color(0xFF8B5CF6),
                  ),

                  SizedBox(height: 16),

                  Text(
                    "Every Gesture Has A Voice",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Empowering communication through AI-powered sign language translation.",
                    style: TextStyle(
                      color: Colors.black54,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              "Features",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.95,
              children: [

                FeatureCard(
                  title: "Translate Signs",
                  subtitle: "Sign → Speech",
                  icon: Icons.pan_tool_alt_outlined,
                  color: const Color(0xFFE5F7EE),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const SignToSpeechScreen(),
                      ),
                    );
                  },
                ),

                FeatureCard(
                  title: "Listen & Reply",
                  subtitle: "Speech → Sign",
                  icon: Icons.mic_none,
                  color: const Color(0xFFEDE3FA),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const SpeechToSignScreen(),
                      ),
                    );
                  },
                ),

                FeatureCard(
                  title: "Conversation",
                  subtitle: "Real-Time",
                  icon: Icons.chat_bubble_outline,
                  color: const Color(0xFFFFEEE5),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const ConversationScreen(),
                      ),
                    );
                  },
                ),

                FeatureCard(
                  title: "Quick Phrases",
                  subtitle: "Common Needs",
                  icon: Icons.menu_book_outlined,
                  color: const Color(0xFFFFF5D8),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const PhrasesScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 28),

            /// Stats Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [

                  StatItem(
                    value: "24",
                    label: "Phrases",
                  ),

                  StatItem(
                    value: "12",
                    label: "Sessions",
                  ),

                  StatItem(
                    value: "4",
                    label: "Languages",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            Icon(
              icon,
              size: 40,
            ),

            const Spacer(),

            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String value;
  final String label;

  const StatItem({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}