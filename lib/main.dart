// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'view/tela_metodo_login.dart';
import 'view/tela_login.dart';
import 'view/telas_dev.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Take Care',
      initialRoute: 'loginMethod',
      //
      // ROTAS DE NAVEGAÇÃO
      //
      routes: {
        'loginMethod': (context) => TelaMetodoLogin(),
        'login': (context) => TelaLogin(),
        // 'signup': (context) => TelaRegistro(),
        'dev': (context) => TelaDev(),
      },
    ),
  );
}
