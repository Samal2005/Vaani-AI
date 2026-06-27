import 'package:flutter/material.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EF),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Quick Phrases",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.95,
                children: const [

                  PhraseCard(
                    icon: Icons.local_hospital,
                    title: "Doctor",
                    color: Color(0xFFFFE5E0),
                  ),

                  PhraseCard(
                    icon: Icons.water_drop,
                    title: "Water",
                    color: Color(0xFFE3F2FD),
                  ),

                  PhraseCard(
                    icon: Icons.train,
                    title: "Station",
                    color: Color(0xFFFFF3D6),
                  ),

                  PhraseCard(
                    icon: Icons.phone,
                    title: "Help",
                    color: Color(0xFFFFE8D9),
                  ),

                  PhraseCard(
                    icon: Icons.medical_services,
                    title: "Hospital",
                    color: Color(0xFFEDE3FA),
                  ),

                  PhraseCard(
                    icon: Icons.wc,
                    title: "Washroom",
                    color: Color(0xFFFFF5D8),
                  ),

                  PhraseCard(
                    icon: Icons.home,
                    title: "Home",
                    color: Color(0xFFE5F7EE),
                  ),

                  PhraseCard(
                    icon: Icons.favorite,
                    title: "Thank You",
                    color: Color(0xFFF2E8FF),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFEDE3FA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [

                  const Icon(
                    Icons.add_circle_outline,
                    size: 40,
                    color: Color(0xFF8B5CF6),
                  ),

                  const SizedBox(width: 16),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Can't find what you need?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "Add your own custom phrase.",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    onPressed: null,
                    child: Text("Add"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhraseCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const PhraseCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(
            icon,
            size: 52,
            color: Colors.black87,
          ),

          const SizedBox(height: 16),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 12),

          const Icon(
            Icons.volume_up_outlined,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}