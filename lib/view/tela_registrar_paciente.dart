import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TelaRegistroPaciente extends StatefulWidget {
  const TelaRegistroPaciente({super.key});

  @override
  State<TelaRegistroPaciente> createState() => _TelaRegistroPacienteState();
}

class _TelaRegistroPacienteState extends State<TelaRegistroPaciente> {
  //ATRIBUTOS

  var phone = MaskTextInputFormatter(mask: '(##) # ####-####');
  var data = MaskTextInputFormatter(mask: '##/##/####');

  //METODOS

  Widget fieldName() {
    return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'Nome:'),
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
        title: Text(
          'Cadastre seu paciente',
          style: TextStyle(color: Colors.black),
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
                      child: Image.asset("assets/images/velha.png"),
                      radius: 60,
                      backgroundColor: Colors.white,
                    ),
                    // ignore: prefer_const_constructors
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
                    // fieldPhone(),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // fieldTipoCuidador(),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 153,
                      height: 66,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'mainScreen');
                          },
                          child: Text(
                            'Pronto',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff16ABFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
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
