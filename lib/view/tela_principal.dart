import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

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
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/registro.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color(0xFF808080)),
                          borderRadius: BorderRadius.circular(8),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 4.0,
                              spreadRadius: 1.0,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 80,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                        "assets/images/paciente.png"),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Condicionamento: ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //backgroundColor: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const SizedBox(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8, horizontal: 20),
                                              child: Text(
                                                'Normal',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Montserrat',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Gap(20),
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.white,
                                          child: Image.asset(
                                              "assets/images/mapa.png"),
                                        ),
                                      ),
                                      const Text(
                                        'VER NO MAPA',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //backgroundColor: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Meu paciente',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      //backgroundColor: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(8),
                              child: InkWell(
                                splashColor: Colors.grey,
                                onTap: () {},
                                child: Ink(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: const Color(0xFF808080)),
                                      borderRadius: BorderRadius.circular(8),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/dieta.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          child: Text(
                                            'DIETA',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              //backgroundColor: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(8),
                              child: InkWell(
                                splashColor: Colors.grey,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, 'listMedication');
                                },
                                child: Ink(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: const Color(0xFF808080)),
                                      borderRadius: BorderRadius.circular(8),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/medicacoes.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          child: Text(
                                            'MEDICAÇÕES',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              //backgroundColor: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(8),
                              child: InkWell(
                                splashColor: Colors.grey,
                                onTap: () {},
                                child: Ink(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: const Color(0xFF808080)),
                                      borderRadius: BorderRadius.circular(8),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ]),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/agenda.png',
                                        width: 80,
                                        height: 80,
                                      ),
                                      const SizedBox(
                                        child: Text(
                                          'AGENDA',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(8),
                              child: InkWell(
                                splashColor: Colors.grey,
                                onTap: () {},
                                child: Ink(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: const Color(0xFF808080)),
                                      borderRadius: BorderRadius.circular(8),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 4.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ]),
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/batimentoscardiacos.png',
                                        width: 100,
                                        height: 100,
                                      ),
                                      const SizedBox(
                                        child: Text(
                                          'CARDIO',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            //backgroundColor: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
