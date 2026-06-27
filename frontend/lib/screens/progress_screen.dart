import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EF),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Progress",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            /// Progress Overview
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFFEDE3FA),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                children: [

                  Icon(
                    Icons.emoji_events,
                    size: 60,
                    color: Color(0xFF8B5CF6),
                  ),

                  SizedBox(height: 12),

                  Text(
                    "Great Progress!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Keep practicing to improve your sign language skills.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Stats
            Row(
              children: [

                Expanded(
                  child: ProgressStatCard(
                    value: "56",
                    label: "Lessons",
                    icon: Icons.school,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: ProgressStatCard(
                    value: "18h",
                    label: "Practice",
                    icon: Icons.timer,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [

                Expanded(
                  child: ProgressStatCard(
                    value: "82%",
                    label: "Accuracy",
                    icon: Icons.track_changes,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: ProgressStatCard(
                    value: "7",
                    label: "Streak",
                    icon: Icons.local_fire_department,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            /// Achievements
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Achievements",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  AchievementTile(
                    icon: Icons.star,
                    title: "First Lesson",
                    subtitle:
                        "Completed your first lesson",
                  ),

                  AchievementTile(
                    icon: Icons.bolt,
                    title: "7 Day Streak",
                    subtitle:
                        "Practiced for 7 consecutive days",
                  ),

                  AchievementTile(
                    icon: Icons.workspace_premium,
                    title: "Sign Master",
                    subtitle:
                        "Completed 50 lessons",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Weekly Progress
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Weekly Progress",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:
                        CrossAxisAlignment.end,
                    children: const [

                      ProgressBar(day: "M", height: 50),
                      ProgressBar(day: "T", height: 80),
                      ProgressBar(day: "W", height: 60),
                      ProgressBar(day: "T", height: 100),
                      ProgressBar(day: "F", height: 70),
                      ProgressBar(day: "S", height: 120),
                      ProgressBar(day: "S", height: 90),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ProgressStatCard extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;

  const ProgressStatCard({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: const Color(0xFF8B5CF6),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class AchievementTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const AchievementTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFEDE3FA),
        child: Icon(
          icon,
          color: const Color(0xFF8B5CF6),
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final String day;
  final double height;

  const ProgressBar({
    super.key,
    required this.day,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.end,
      children: [

        Container(
          width: 24,
          height: height,
          decoration: BoxDecoration(
            color: const Color(0xFF8B5CF6),
            borderRadius:
                BorderRadius.circular(12),
          ),
        ),

        const SizedBox(height: 8),

        Text(day),
      ],
    );
  }
}