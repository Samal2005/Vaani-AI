import 'package:flutter/material.dart';

class SpeechToSignScreen extends StatelessWidget {
  const SpeechToSignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EF),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Speech → Sign",
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

            /// Listening Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFFEDE3FA),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                children: [

                  Text(
                    "Listening...",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 20),

                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.mic,
                      size: 45,
                      color: Color(0xFFB59CEB),
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Tap the mic and start speaking",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Recognized Text
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "You Said",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(height: 12),

                  Text(
                    "THE TRAIN ARRIVES AT 6 PM",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Sign Preview
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Sign Preview",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [

                      Expanded(
                        child: _signCard(
                          icon: Icons.train,
                          label: "TRAIN",
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: _signCard(
                          icon: Icons.access_time,
                          label: "6 PM",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Buttons
            SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.mic),
                label: const Text("Tap To Speak"),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 58,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.refresh),
                label: const Text("Repeat"),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _signCard({
    required IconData icon,
    required String label,
  }) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(
            icon,
            size: 45,
            color: const Color(0xFF6FAF8F),
          ),

          const SizedBox(height: 12),

          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}