import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgWikiSobre extends StatelessWidget{
  const ProgWikiSobre ({super.key});

  @override
  Widget build(BuildContext context){
    final Color purple = const Color(0xFF8B5CF6);
    final Color blue = const Color(0xFF06B6D4);
    final Color background = const Color(0xFF1E1E2E);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        actions: [
          IconButton(
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "inicio", (route) => route.settings.name == "inicio");
          }, 
          icon: Icon(Icons.exit_to_app),
          color: Colors.white,
          ),
        ],
        backgroundColor: background,
      ),
      backgroundColor: const Color(0xFF1E1E2E),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF8B5CF6),
                    border: Border.all(
                      color: const Color(0xFF06B6D4),
                      width: 12,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "PROG\nWIKI",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kenia(
                        fontSize: 50,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 11,
              child: Center(
                child: Container(
                  width: 350,
                  height: 800,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    color: purple,
                    border: Border.all(
                      color: blue,
                      width: 12,
                    )
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "O ProgWiki é um aplicativo desenvolvido para ajudar tanto jovens programadores quanto programadores mais experientes a conhecer novas linguagens de programação, mostrando suas aplicações e suas características, junto com um exemplo visual do seu código fonte.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.khmer(
                          fontSize: 16,
                          color: Colors.grey[300],
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Autor da Aplicação:\nPedro Henrique Brancaglioni\n RA: 2840482413040",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.khmer(
                          fontSize: 16,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}