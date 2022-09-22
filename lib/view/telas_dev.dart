// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaDev extends StatefulWidget {
  const TelaDev({super.key});

  @override
  State<TelaDev> createState() => _TelaDevState();
}

class _TelaDevState extends State<TelaDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: FaIcon(
                      FontAwesomeIcons.bug,
                      size: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'Em construção',
                      style: GoogleFonts.montserrat(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(999, 60)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Fechar',
                        style: GoogleFonts.montserrat(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
