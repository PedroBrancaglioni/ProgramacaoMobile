import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progwiki/controller/controller.dart';

class ProgWikilogin extends StatefulWidget {
  const ProgWikilogin({super.key});

  @override
  State<ProgWikilogin> createState() => _ProgWikiLoginState();
}

class _ProgWikiLoginState extends State<ProgWikilogin> {
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
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            // Logo
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: purple,
                    border: Border.all(
                      color: blue,
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

            // Campos de login
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Campo E-mail
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "E-mail",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 18,
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
                      onChanged: (value) {
                        ctrl.atualizaValorEmail(value);
                      },
                    ),
                    const SizedBox(height: 20),

                    // Campo Senha
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Senha",
                        style: GoogleFonts.kenia(
                          color: Colors.white,
                          fontSize: 18,
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
                    const SizedBox(height: 8),

                    // Esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          dialogoEsqueceuSenha();
                        },
                        child: Text(
                          "Esqueceu a senha?",
                          style: GoogleFonts.kenia(
                            color: blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Botão Entrar
            Expanded(
              flex: 2,
              child: Center(
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if(ctrl.email == "" || ctrl.senha == ""){
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
                          Navigator.pushNamed(context, "Menu");
                          ctrl.email = "";
                          ctrl.senha = "";
                          ctrl.contem = false;
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

  dialogoEsqueceuSenha(){
    return showDialog(
      context: context, 
      builder: (BuildContext context){
        return Dialog(
          backgroundColor: const Color.fromARGB(255, 139, 92, 246),
          insetPadding: EdgeInsets.all(20),
          child: Container(
            height: 250,
            width: 20,
            decoration: BoxDecoration(
              //color: Colors.grey[350],
              color: Color.fromARGB(255, 30, 30, 46),
              border: Border.all(
                color: Colors.grey,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(0, 10)
                )
              ],
            ),
            child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (){
                      Navigator.pop(context);
                      },
                      color: Colors.grey[350],
                      
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 250,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "E-mail para recuperação",
                      style: GoogleFonts.kenia(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  width: 250,
                  child: TextField(
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
                      ctrl.atualizaValorEmailRecuperacao(value);
                    },
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    if(ctrl.emailRecuperacao == ""){
                        showDialog(
                          context: context, // contexto do widget
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Erro"),
                              content: Text("O campo de email deve estar preenchido"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context), // fecha o dialog
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      }else{
                        if(ctrl.contem == false){
                          showDialog(
                          context: context, // contexto do widget
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Erro"),
                              content: Text("O email deve conter @gmail.com"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context), // fecha o dialog
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                        }else{
                          Navigator.pop(context);
                          ctrl.contem = false;
                          ctrl.emailRecuperacao = "";
                        }
                      }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 139, 92, 246),
                  ),
                  child: Text(
                    "Enviar",
                    style: GoogleFonts.kenia(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ),
              ],
            ),
          ),
        );
      });
  }
}