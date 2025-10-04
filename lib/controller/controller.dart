import 'package:flutter/material.dart';
import 'package:progwiki/models/card.dart';

class ProgWikiController extends ChangeNotifier{
  final List<Card_linguagem> cardslinguagens = [
  Card_linguagem(id: 1, nome: 'Python', imagemUrl: 'lib/assets/imagens/logo_python.png'),
  Card_linguagem(id: 2, nome: 'Java', imagemUrl: 'lib/assets/imagens/logo_java.png'),
  Card_linguagem(id: 3, nome: 'C++', imagemUrl: 'lib/assets/imagens/logo_c++.png'),
  Card_linguagem(id: 4, nome: 'Javascript', imagemUrl: 'lib/assets/imagens/logo_javascript.png'),
  Card_linguagem(id: 5, nome: 'PHP', imagemUrl: 'lib/assets/imagens/logo_php.png'),
  Card_linguagem(id: 6, nome: 'Dart', imagemUrl: 'lib/assets/imagens/logo_dart.png'),
  Card_linguagem(id: 7, nome: 'C#', imagemUrl: 'lib/assets/imagens/logo_c#.png'),
  Card_linguagem(id: 8, nome: 'Ruby', imagemUrl: 'lib/assets/imagens/logo_ruby.png'),
  Card_linguagem(id: 9, nome: 'Swift', imagemUrl: 'lib/assets/imagens/logo_swift.png'),
  Card_linguagem(id: 10, nome: 'Rust', imagemUrl: 'lib/assets/imagens/logo_rust.png'),
  Card_linguagem(id: 11, nome: 'C', imagemUrl: 'lib/assets/imagens/logo_c.png'),
  Card_linguagem(id: 12, nome: 'Go', imagemUrl: 'lib/assets/imagens/logo_go.png'),
  ];
  
  String email = "";
  String emailRecuperacao = "";
  String senha = "";
  bool contem = false;
  String nome = "";
  String senha2 = "";
  String linguagem = "";
  String telefone = "";

  List<Card_linguagem> get cards => cardslinguagens;


  void mostrarTela(BuildContext context, int id){
    switch(id){
      case 1:
        Navigator.pushNamed(context, "Python");
      break;
      case 2:
        Navigator.pushNamed(context, "Java");
      break;
      case 3:
        Navigator.pushNamed(context, "C++");
      break;
      case 4:
        Navigator.pushNamed(context, "Javascript");
      break;
      case 5:
        Navigator.pushNamed(context, "PHP");
      break;
      case 6:
        Navigator.pushNamed(context, "Dart");
      break;
      case 7:
        Navigator.pushNamed(context, "CSharp");
      break;
      case 8:
        Navigator.pushNamed(context, "Ruby");
      break;
      case 9:
       Navigator.pushNamed(context, "Swift");
      break;
      case 10:
        Navigator.pushNamed(context, "Rust");
      break;
      case 11:
        Navigator.pushNamed(context, "C");
      break;
      case 12:
        Navigator.pushNamed(context, "Go");
      break;
    }
  }

  void atualizaValorNome(String nm){
    nome = nm;
    notifyListeners();
  }

  void atualizaValorEmail(String em){
    email = em;
    contem = email.contains("@gmail.com");
    notifyListeners();
  }

  void atualizaValorSenha(String se){
    senha = se;
    notifyListeners();
  }

  void atualizaValorSenha2(String se){
    senha2 = se;
    notifyListeners();
  }

  void atualizaValorTelefone(String tl){
    telefone = tl;
    notifyListeners();
  }

  void atualizaValorLinguagem(String l){
    linguagem = l;
    notifyListeners();
  }

  void atualizaValorEmailRecuperacao(String em){
    emailRecuperacao = em;
    contem = false;
    contem = emailRecuperacao.contains("@gmail.com");
    notifyListeners();
  }
}