import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaAgendaMedicacoes extends StatefulWidget {
  // final Contact contact;

  // TelaAgendaMedicacoes({this.contact});

  @override
  _TelaAgendaMedicacoesState createState() => _TelaAgendaMedicacoesState();
}

class _TelaAgendaMedicacoesState extends State<TelaAgendaMedicacoes> {
  final _nameController = TextEditingController();
  final _doseController = TextEditingController();
  final _periodoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _requestPop,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              "Agendar medicamento",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            child: Icon(Icons.save),
            backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    width: 140.0,
                    height: 140.0,
                    decoration: BoxDecoration(),
                  ),
                  onTap: () {},
                ),
                campoText(FaIcon(FontAwesomeIcons.fileSignature), 'Nome',
                    _nameController),
                campoText(
                    FaIcon(FontAwesomeIcons.flask), 'Dose', _doseController),
                campoText(FaIcon(FontAwesomeIcons.calendar), 'Período',
                    _periodoController),
                // campoDropDown()
              ],
            ),
          ),
        ));
  }

  Future<bool> _requestPop() {
    return Future.value(true);
  }

  campoText(prefixIcon, hint, variavel) {
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
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
