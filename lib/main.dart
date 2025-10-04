import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:progwiki/controller/controller.dart';
import 'package:progwiki/view/C++.dart';
import 'package:progwiki/view/C.dart';
import 'package:progwiki/view/CSharp.dart';
import 'package:progwiki/view/Dart.dart';
import 'package:progwiki/view/Go.dart';
import 'package:progwiki/view/Java.dart';
import 'package:progwiki/view/Javascript.dart';
import 'package:progwiki/view/Python.dart';
import 'package:progwiki/view/Ruby.dart';
import 'package:progwiki/view/Rust.dart';
import 'package:progwiki/view/Swift.dart';
import 'package:progwiki/view/cadastro.dart';
import 'package:progwiki/view/inicio.dart';
import 'package:progwiki/view/login.dart';
import 'package:progwiki/view/menu.dart';
import 'package:progwiki/view/php.dart';
import 'package:progwiki/view/sobre.dart';

final g = GetIt.instance;
void main() {
  g.registerSingleton<ProgWikiController>
    (ProgWikiController());
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ProgWiki",
      initialRoute: "inicio",
      routes: {
        "inicio": (context) => ProgWikiApp(),
        "login": (context) => ProgWikilogin(),
        "Cadastro": (context) => ProgWikiCadastro(),
        "Menu": (context) => ProgWikiMenu(),
        "Sobre": (context) => ProgWikiSobre(),
        "Python": (context) => Python(),
        "Java": (context) => Java(),
        "C++": (context) => CMaisMais(),
        "Javascript": (context) => Javascript(),
        "PHP": (context) => PHP(),
        "Dart": (context) => Dart(),
        "CSharp": (context) => CSharp(),
        "Ruby": (context) => Ruby(),
        "Swift": (context) => Swift(),
        "Rust": (context) => Rust(),
        "C": (context) => CLinguagem(),
        "Go": (context) => Go(),
      },
    );
  }
}
