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

                  // Column(
                  //   children: [
                  //     Container(
                  //       margin: EdgeInsets.all(10),
                  //       child: Image.asset('assets/images/paciente.png')

                  //     ),
                  //   ],
                  // ),

                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
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
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: const Color(0xFF808080)),
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
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
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
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: const Color(0xFF808080)),
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
                        ],
                      ),
                    ],
                  ),

                  // Center(
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10),
                  //     child: Row(children: [
                  //       Ink(
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey.shade200,
                  //           border: Border.all(color: Colors.black),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               margin: EdgeInsets.all(10),
                  //               child: Image.asset(
                  //                 'assets/images/dieta.png',
                  //                 width: 100,
                  //                 height: 100,
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               child: const Text(
                  //                 'DIETA',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   //backgroundColor: Colors.white,
                  //                   fontSize: 20,
                  //                   fontWeight: FontWeight.w600,
                  //                   fontFamily: 'Montserrat',
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       Ink(
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey.shade200,
                  //           border: Border.all(color: Colors.black),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               margin: EdgeInsets.all(10),
                  //               child:
                  //                   Image.asset('assets/images/medicacoes.png'),
                  //               width: 100,
                  //               height: 100,
                  //             ),
                  // SizedBox(
                  //   child: const Text(
                  //     'MEDICAÇÕES',
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       //backgroundColor: Colors.white,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w600,
                  //       fontFamily: 'Montserrat',
                  //     ),
                  //   ),
                  // )
                  //           ],
                  //         ),
                  //       ),
                  //     ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                  //   ),
                  // ),
                  // Center(
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10),
                  //     child: Row(children: [
                  //       Ink(
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey.shade200,
                  //           border: Border.all(color: Colors.black),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               margin: EdgeInsets.all(10),
                  //               child: Image.asset(
                  //                 'assets/images/agenda.png',
                  //                 width: 100,
                  //                 height: 100,
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               child: const Text(
                  //                 'AGENDA',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   backgroundColor: Colors.white,
                  //                   fontSize: 20,
                  //                   fontWeight: FontWeight.w600,
                  //                   fontFamily: 'Montserrat',
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       Ink(
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey.shade200,
                  //           border: Border.all(color: Colors.black),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               margin: EdgeInsets.all(10),
                  //               child: Image.asset(
                  //                   'assets/images/batimentoscardiacos.png'),
                  //               width: 100,
                  //               height: 100,
                  //             ),
                  //             SizedBox(
                  //               child: const Text(
                  //                 'CARDIO',
                  //                 textAlign: TextAlign.center,
                  //                 style: TextStyle(
                  //                   //backgroundColor: Colors.white,
                  //                   fontSize: 20,
                  //                   fontWeight: FontWeight.w600,
                  //                   fontFamily: 'Montserrat',
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
