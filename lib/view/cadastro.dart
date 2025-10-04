import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progwiki/controller/controller.dart';

class ProgWikiCadastro extends StatefulWidget{
  const ProgWikiCadastro({super.key});

  @override
  State<ProgWikiCadastro> createState() => _ProgWikiCadastroState ();

}

class _ProgWikiCadastroState extends State<ProgWikiCadastro> {
  final ctrl = GetIt.I.get<ProgWikiController>();

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context){
    final Color purple = const Color(0xFF8B5CF6);
    final Color blue = const Color(0xFF06B6D4);
    final Color background = const Color(0xFF1E1E2E);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        toolbarHeight: 30,
        actions: [
          IconButton(
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "inicio", (route) => route.settings.name == "inicio");
          }, 
          icon: Icon(Icons.exit_to_app),
          iconSize: 20,
          color: Colors.white,
          ),
        ],
        backgroundColor: background,
      ),
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            //logo
            Expanded(
                flex: 4,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
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
                          fontSize: 20,
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            Expanded(
              flex: 12,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nome Completo",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "João...",
                        hintStyle: const TextStyle(color: Colors.black38),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value){
                        ctrl.atualizaValorNome(value);
                      },
                    ),
                    const SizedBox(height: 5),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "...@gmail.com",
                        hintStyle: const TextStyle(color: Colors.black38),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value){
                        ctrl.atualizaValorEmail(value);
                      },
                    ),
                    const SizedBox(height: 5),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Senha",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value){
                        ctrl.atualizaValorSenha(value);
                      },
                    ),
                    const SizedBox(height: 5),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirme a senha",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value){
                        ctrl.atualizaValorSenha2(value);
                      },
                    ),
                    const SizedBox(height: 5),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Telefone",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "(99)99999-9999",
                        hintStyle: const TextStyle(color: Colors.black38),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value){
                        ctrl.atualizaValorTelefone(value);
                      },
                    ),
                    const SizedBox(height: 5),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Linguagem Favorita",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 45,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "Python, Javascript...",
                          hintStyle: const TextStyle(color: Colors.black38),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onChanged: (value){
                          ctrl.atualizaValorLinguagem(value);
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 2,
              child: Center(
                child: SizedBox(
                  width: 180,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      if(ctrl.nome == "" || ctrl.email == "" || ctrl.senha == "" || ctrl.senha2 == "" || ctrl.telefone == "" || ctrl.linguagem == ""){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(
                            "Todos os campos devem estar preenchidos!",
                            style: GoogleFonts.khmer(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(seconds: 2),
                          ),
                        );
                      }else{
                        if(ctrl.contem == false){
                          ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(
                            "O email deve conter @gmail.com",
                            style: GoogleFonts.khmer(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1,
                            ),
                            textAlign: TextAlign.center,
                            ), 
                            duration: Duration(seconds: 2),
                            ),
                          );
                        }else{
                          if(ctrl.senha != ctrl.senha2){
                            ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(
                              "Os campos: Senha e Confirmar Senha devem ser iguais",
                              style: GoogleFonts.khmer(
                              fontSize: 20,
                              color: Colors.white,
                              height: 1,
                              ),
                              textAlign: TextAlign.center,
                              ), 
                              duration: Duration(seconds: 2),
                              ),
                            );
                          }else{
                            Navigator.pushNamed(context, "Menu");
                            ctrl.nome = "";
                            ctrl.email = "";
                            ctrl.senha = "";
                            ctrl.senha2 = "";
                            ctrl.telefone = "";
                            ctrl.linguagem = "";
                            ctrl.contem = false;
                          }
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Entrar",
                      style: GoogleFonts.kenia(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}