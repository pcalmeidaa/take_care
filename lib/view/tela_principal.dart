import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                      top: 16,
                    ),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/registro.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset('assets/images/meuPaciente.png'),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(children: [
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset(
                                  'assets/images/dieta.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              SizedBox(
                                child: const Text(
                                  'DIETA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    //backgroundColor: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child:
                                    Image.asset('assets/images/medicacoes.png'),
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                child: const Text(
                                  'MEDICAÇÕES',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    //backgroundColor: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(children: [
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset(
                                  'assets/images/agenda.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              SizedBox(
                                child: const Text(
                                  'AGENDA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    backgroundColor: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Ink(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset(
                                    'assets/images/batimentoscardiacos.png'),
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                child: const Text(
                                  'CARDIO',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    //backgroundColor: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
