import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progwiki/controller/controller.dart';

final List<Map<String, dynamic>> items = [
  {"id": 1, "nome": "Python"},
  {"id": 2, "nome": "Java"},
  {"id": 3, "nome": "C++"},
  {"id": 4, "nome": "Javascript"},
  {"id": 5, "nome": "PHP"},
  {"id": 6, "nome": "Dart"},
  {"id": 7, "nome": "C#"},
  {"id": 8, "nome": "Ruby"},
  {"id": 9, "nome": "Swift"},
  {"id": 10, "nome": "Rust"},
  {"id": 11, "nome": "C"},
  {"id": 12, "nome": "Go"},
];

class ProgWikiMenu extends StatefulWidget {
  const ProgWikiMenu({super.key});

  @override
  State<ProgWikiMenu> createState() => _ProgWikiMenuState();
}

class _ProgWikiMenuState extends State<ProgWikiMenu> {
  final ctrl = GetIt.I.get<ProgWikiController>();

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final Color purple = const Color(0xFF8B5CF6);
    final Color blue = const Color(0xFF06B6D4);
    final Color background = const Color(0xFF1E1E2E);

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 30,
        automaticallyImplyLeading:false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, "inicio", (route) => route.settings.name == "inicio");
            },
            icon: const Icon(Icons.exit_to_app),
            iconSize: 20,
            color: Colors.white,
          ),
        ],
        backgroundColor: background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Logo
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: purple,
                    border: Border.all(
                      color: blue,
                      width: 8,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "PROG\nWIKI",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kenia(
                        fontSize: 45,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Grid
            Expanded(flex: 6, child: vergrid()),
          ],
        ),
      ),
    );
  }

  Widget vergrid() {
  return GridView.builder(
    itemCount: ctrl.cards.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      childAspectRatio: 1.6,
    ),
    itemBuilder: (context, index) {
      final card = ctrl.cards[index];
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Color(0xFF8B5CF6),
            width: 8,
          ),
          backgroundColor: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
            ctrl.mostrarTela(context, card.id);
        },
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  card.imagemUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 5),
                Text(
                  card.nome,
                  style: GoogleFonts.kenia(
                    fontSize: 14,
                    color: Colors.black,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
}