import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rust extends StatelessWidget {
  const Rust({super.key});

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
                      "lib/assets/imagens/logo_rust.png",
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
                        "Rust",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kenia(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Criada pela Mozilla, é conhecida principalmente por oferecer segurança de memória sem precisar de garbage collector.\n\nPrincipais aplicações:\n- Desenvolvimento de sistemas e software de baixo nível\n- Aplicações web de alta performance\n- Ferramentas e utilitários\n- Jogos e engines de alto desempenho.\n\nCaracterísticas:\n- Linguagem moderna, segura e de baixo nível\n- Controle de memória sem garbage collector, evitando erros comuns como segmentation faults\n- Foco em desempenho, concorrência e confiabilidade.",
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
                          "lib/assets/imagens/Código-Rust.png",
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