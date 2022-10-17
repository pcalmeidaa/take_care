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
                    CircleAvatar(
                      child: Image.asset("assets/images/registro.png"),
                      radius: 60,
                      backgroundColor: Colors.white,
                    ),

                    SizedBox(
                    width: 153,
                    height: 66,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('about');
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