import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:take_care/view/tela_login.dart';

class TelaRegistro extends StatefulWidget {
  const TelaRegistro({super.key});

  @override
  State<TelaRegistro> createState() => _TelaRegistroState();
}

class _TelaRegistroState extends State<TelaRegistro> {
  //ATRIBUTOS

  var phone = MaskTextInputFormatter(mask: '(##) # ####-####');
  var data = MaskTextInputFormatter(mask: '##/##/####');

  //METODOS

  Widget fieldName() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nome:',
        fillColor: Colors.grey.shade300,
        filled: true,
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  Widget fieldDtNascimento() {
    return TextFormField(
      inputFormatters: [data],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Data Nascimento:',
          hintText: 'DD/MM/YYYY'),
    );
  }

  Widget fieldSexo() {
    return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'Sexo:'),
    );
  }

  Widget fieldPhone() {
    return TextFormField(
      inputFormatters: [phone],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Telefone:',
          hintText: '(99) 9 9999-9999'),
    );
  }

  Widget fieldTipoCuidador() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: 'Tipo de Cuidador:'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // ignore: prefer_const_constructors
        title: Text(
          'Monte seu Perfil',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),

        //actions: [IconButton(icon: Icon(Icons.save), onPressed: null)],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/registro.png"),
                      radius: 60,
                      backgroundColor: Colors.white,
                    ),
                    Container(
                      child: const Text(
                        'Alterar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    fieldName(),
                    SizedBox(
                      height: 10,
                    ),
                    fieldDtNascimento(),
                    SizedBox(
                      height: 10,
                    ),
                    fieldSexo(),
                    SizedBox(
                      height: 10,
                    ),
                    fieldPhone(),
                    SizedBox(
                      height: 10,
                    ),
                    fieldTipoCuidador(),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 153,
                      height: 66,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('login');
                          },
                          child: Text(
                            'Pronto',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff16ABFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
