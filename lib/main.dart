// ignore_for_file: prefer_const_constructors
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:take_care/view/tela_agendar_dietas.dart';
import 'package:take_care/view/tela_bemvindo.dart';
import 'package:take_care/view/tela_listadietas.dart';
import 'package:take_care/view/tela_principal.dart';
import 'firebase_options.dart';
import 'view/tela_metodo_login.dart';
import 'view/tela_login.dart';
import 'view/tela_registro.dart';
import 'view/telas_dev.dart';
import 'view/tela_sobre.dart';
import 'view/tela_agendar_medicamentos.dart';
import 'view/tela_listamedicacoes.dart';
import 'view/tela_registrar_paciente.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  //
  //EVITA O ERRO DE INICIALIZAÇÃO NO ANDROID
  //

  WidgetsFlutterBinding.ensureInitialized();

  //
  //INICIALIZAÇÃO FIREBASE
  //
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Take Care',
      initialRoute: 'welcome',
      //
      // ROTAS DE NAVEGAÇÃO
      //
      routes: {
        'welcome': (context) => TelaBemvindo(),
        'about': (context) => TelaSobre(),
        'loginMethod': (context) => TelaMetodoLogin(),
        'login': (context) => TelaLogin(),
        'signUp': (context) => TelaRegistro(),
        'registerPatient': (context) => TelaRegistroPaciente(),
        'dev': (context) => TelaDev(),
        'mainScreen': (context) => TelaPrincipal(),
        'listMedication': (context) => TelaListaMedicacoes(),
        'scheduleMedication': (context) => TelaAgendaMedicacoes(),
        'listdieta': (context) => TelaListaDietas(),
        'scheduleDieta': (context) => TelaAgendarDietas(),
      },
    ),
  );
}
