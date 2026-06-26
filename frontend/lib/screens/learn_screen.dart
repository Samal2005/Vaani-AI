import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EF),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Learn Sign Language",
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

            /// Header Card
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
                    Icons.school,
                    size: 60,
                    color: Color(0xFF8B5CF6),
                  ),

                  SizedBox(height: 12),

                  Text(
                    "Start Learning ISL",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Learn Indian Sign Language through simple lessons and practice exercises.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            LessonCard(
              title: "Basics",
              lessons: "12 Lessons",
              progress: "80%",
              icon: Icons.waving_hand,
              color: const Color(0xFFE5F7EE),
            ),

            LessonCard(
              title: "Daily Life",
              lessons: "18 Lessons",
              progress: "60%",
              icon: Icons.home,
              color: const Color(0xFFFFF5D8),
            ),

            LessonCard(
              title: "Food & Drinks",
              lessons: "10 Lessons",
              progress: "40%",
              icon: Icons.restaurant,
              color: const Color(0xFFFFEEE5),
            ),

            LessonCard(
              title: "Travel",
              lessons: "14 Lessons",
              progress: "20%",
              icon: Icons.train,
              color: const Color(0xFFE3F2FD),
            ),

            LessonCard(
              title: "Medical",
              lessons: "8 Lessons",
              progress: "0%",
              icon: Icons.local_hospital,
              color: const Color(0xFFFFE5E0),
            ),

            LessonCard(
              title: "Emergency",
              lessons: "6 Lessons",
              progress: "0%",
              icon: Icons.warning_amber,
              color: const Color(0xFFFFF0D8),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  final String title;
  final String lessons;
  final String progress;
  final IconData icon;
  final Color color;

  const LessonCard({
    super.key,
    required this.title,
    required this.lessons,
    required this.progress,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [

          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: Icon(
              icon,
              color: Colors.black87,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  lessons,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [

              Text(
                progress,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                "Done",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}