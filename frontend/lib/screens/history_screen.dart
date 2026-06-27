import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F3EF),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "History",
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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFEDE3FA),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Row(
                children: [

                  Icon(
                    Icons.history,
                    size: 40,
                    color: Color(0xFF8B5CF6),
                  ),

                  SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Recent Activity",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "Your recent translations and conversations",
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

            Expanded(
              child: ListView(
                children: const [

                  HistoryCard(
                    title: "Need Water",
                    translation: "मुझे पानी चाहिए",
                    time: "Today • 10:42 AM",
                    icon: Icons.water_drop,
                  ),

                  HistoryCard(
                    title: "Call Doctor",
                    translation: "डॉक्टर को बुलाइए",
                    time: "Today • 09:15 AM",
                    icon: Icons.local_hospital,
                  ),

                  HistoryCard(
                    title: "Thank You",
                    translation: "धन्यवाद",
                    time: "Yesterday • 07:30 PM",
                    icon: Icons.favorite,
                  ),

                  HistoryCard(
                    title: "Where is the Station?",
                    translation: "स्टेशन कहाँ है?",
                    time: "Yesterday • 05:10 PM",
                    icon: Icons.train,
                  ),

                  HistoryCard(
                    title: "I Need Help",
                    translation: "मुझे मदद चाहिए",
                    time: "Yesterday • 02:20 PM",
                    icon: Icons.support_agent,
                  ),

                  HistoryCard(
                    title: "Hospital Please",
                    translation: "कृपया अस्पताल चलिए",
                    time: "2 Days Ago",
                    icon: Icons.medical_services,
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

class HistoryCard extends StatelessWidget {
  final String title;
  final String translation;
  final String time;
  final IconData icon;

  const HistoryCard({
    super.key,
    required this.title,
    required this.translation,
    required this.time,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor: const Color(0xFFEDE3FA),
            child: Icon(
              icon,
              color: const Color(0xFF8B5CF6),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  translation,
                  style: const TextStyle(
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.chevron_right,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}