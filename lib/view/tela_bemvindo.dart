import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaBemvindo extends StatefulWidget {
  const TelaBemvindo({super.key});

  @override
  State<TelaBemvindo> createState() => _TelaBemvindoState();
}

class _TelaBemvindoState extends State<TelaBemvindo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset('lib/images/logotelabemvindo.png'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: const Text('Bem vindo!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const Text(
                      'Take Care tem como objetivo ajudar a cuidar de seu paciente',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    width: 153,
                    height: 66,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('loginMethod');
                        },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Próximo',
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
    );
  }
}
