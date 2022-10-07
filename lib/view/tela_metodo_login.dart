// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaMetodoLogin extends StatefulWidget {
  const TelaMetodoLogin({super.key});

  @override
  State<TelaMetodoLogin> createState() => _TelaMetodoLoginState();
}

class _TelaMetodoLoginState extends State<TelaMetodoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 200, 20, 20),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 250,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: entrarGoogle(),
              ),
              botao('Entrar', 'entrar', Color.fromARGB(255, 22, 171, 255)),
              botao(
                  'Registrar-se', 'registrar', Color.fromARGB(255, 40, 153, 0)),
            ],
          ),
        ),
      ),
    );
  }

  entrarGoogle() {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.google,
          color: Colors.grey,
        ),
        label: Text(
          'Entrar com conta Google',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(999, 60),
            backgroundColor: Colors.white,
            side: BorderSide(
              width: 2,
              color: Colors.black,
            )),
      ),
    );
  }

  botao(rotulo, tipo, cor) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(999, 60),
          backgroundColor: cor,
        ),
        onPressed: () {
          if (tipo == 'entrar') {
            Navigator.of(context).pushNamed('login');
          } else if (tipo == 'registrar') {
            Navigator.of(context).pushNamed('signUp');
          }
        },
        child: Text(
          rotulo,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
            fontSize: 18,
          )),
        ),
      ),
    );
  }
}
