import 'package:flutter/material.dart';
import 'permission_screen.dart';
class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selectedLanguage = "Hindi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xFFB59CEB),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Choose your\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "language",
                      style: TextStyle(
                        color: Color(0xFFA8D5BA),
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "This helps Vaani-AI translate better for you.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 24),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.2,
                  children: [
                    LanguageCard(
                      nativeName: "हिन्दी",
                      englishName: "Hindi",
                      selected: selectedLanguage == "Hindi",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Hindi";
                        });
                      },
                    ),
                    LanguageCard(
                      nativeName: "ଓଡ଼ିଆ",
                      englishName: "Odia",
                      selected: selectedLanguage == "Odia",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Odia";
                        });
                      },
                    ),
                    LanguageCard(
                      nativeName: "தமிழ்",
                      englishName: "Tamil",
                      selected: selectedLanguage == "Tamil",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Tamil";
                        });
                      },
                    ),
                    LanguageCard(
                      nativeName: "తెలుగు",
                      englishName: "Telugu",
                      selected: selectedLanguage == "Telugu",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Telugu";
                        });
                      },
                    ),
                    LanguageCard(
                      nativeName: "বাংলা",
                      englishName: "Bangla",
                      selected: selectedLanguage == "Bangla",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Bangla";
                        });
                      },
                    ),
                    LanguageCard(
                      nativeName: "ગુજરાતી",
                      englishName: "Gujarati",
                      selected: selectedLanguage == "Gujarati",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Gujarati";
                        });
                      },
                    ),
                    LanguageCard(
                      nativeName: "ಕನ್ನಡ",
                      englishName: "Kannada",
                      selected: selectedLanguage == "Kannada",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Kannada";
                        });
                      },
                    ),
                    LanguageCard(
                      nativeName: "മലയാളം",
                      englishName: "Malayalam",
                      selected: selectedLanguage == "Malayalam",
                      onTap: () {
                        setState(() {
                          selectedLanguage = "Malayalam";
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA8D5BA),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PermissionScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageCard extends StatelessWidget {
  final String nativeName;
  final String englishName;
  final bool selected;
  final VoidCallback onTap;

  const LanguageCard({
    super.key,
    required this.nativeName,
    required this.englishName,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: selected
                ? const Color(0xFFA8D5BA)
                : Colors.transparent,
            width: 3,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nativeName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              englishName,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}