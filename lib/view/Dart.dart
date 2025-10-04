import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dart extends StatelessWidget {
  const Dart({super.key});

  @override
  Widget build(BuildContext context) {
    final Color purple = const Color(0xFF8B5CF6);
    final Color blue = const Color(0xFF06B6D4);
    final Color background = const Color(0xFF1E1E2E);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "Menu", (route) => route.settings.name == "Menu");
            },
            icon: const Icon(Icons.exit_to_app),
            color: Colors.white,
          ),
        ],
        backgroundColor: background,
      ),
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Logo
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: blue,
                      width: 6,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "lib/assets/imagens/logo_dart.png",
                      width: 60,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Container principal
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: purple,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: blue,
                      width: 6,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Dart",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kenia(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Criado pelo Google, é conhecido principalmente pelo framework Flutter, que faz apps multiplataforma.\n\nPrincipais aplicações:\n- Aplicativos móveis para Android e iOS (Flutter) \n- Aplicações web e desktop \n- Protótipos rápidos \n\n- Características:\n- Usada principalmente com o Flutter, um framework do Google para criar aplicativos móveis, web e desktop com um único código.Tem sintaxe parecida com outras linguagens, como Java e JavaScript, então é fácil de aprender.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.khmer(
                          fontSize: 16,
                          color: Colors.grey[300],
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Exemplo simples de código:",
                        style: GoogleFonts.kenia(
                          fontSize: 25,
                          color: Colors.white,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(
                          "lib/assets/imagens/Código-Dart.png",
                          fit: BoxFit.contain,
                      ),
                    ],
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