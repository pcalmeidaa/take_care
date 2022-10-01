// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  // Attrs

  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // // BARRA DE TITULO
      // appBar: AppBar(
      //   // title: Text('Take Care'),
      //   centerTitle: true,
      // 
      // CORPO
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              // ignore: prefer_const_lite  rals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                exit(),
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 250,
                ),
                //
                // INPUT EMAIL
                //
                campoEmail(
                  FaIcon(FontAwesomeIcons.envelope),
                  'Email',
                  txtEmail,
                  optCounter: 'Esqueceu sua senha?',
                ),
                //
                // INPUT SENHA
                //
                campoSenha(
                  FaIcon(FontAwesomeIcons.key),
                  'Senha',
                  txtSenha,
                ),
                botao('Entrar'),
                //
                // REGISTRAR-SE
                //
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('Não possuí uma conta?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  campoEmail(prefixIcon, hint, variavel, {optCounter = ""}) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: TextFormField(
        controller: variavel,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
          fontSize: 15,
        )),
        cursorColor: Colors.black,
        decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: prefixIcon,
            ),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            counter: Text(
              optCounter,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              )),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }

  campoSenha(prefixIcon, hint, variavel, {optCounter = ""}) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: TextFormField(
        obscureText: isObscure,
        obscuringCharacter: "*",
        controller: variavel,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
          fontSize: 15,
        )),
        cursorColor: Colors.black,
        decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: prefixIcon,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                isObscure ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
            ),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            counter: Text(
              optCounter,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              )),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }

  botao(rotulo) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(999, 60),
        backgroundColor: Color.fromARGB(255, 22, 171, 255),
      ),
      onPressed: () {},
      child: Text(
        rotulo,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
          fontSize: 20,
        )),
      ),
    );
  }

  exit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: FaIcon(
              FontAwesomeIcons.times,
            ),
          ),
        ),
      ],
    );
  }
}
