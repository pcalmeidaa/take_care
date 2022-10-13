import 'package:flutter/material.dart';


class TelaSobre extends StatefulWidget {
  const TelaSobre({super.key});

  @override
  State<TelaSobre> createState() => _TelaSobreState();

}

class _TelaSobreState extends State<TelaSobre> {
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
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 200, 20, 20),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Container(
                    child: const Text(
                      ' Esse aplicativo é para auxiliar idosos e cuidadores de idosos. O envelhecimento populacional é um fenômeno mundial e as tecnologias em saúde são uma importante ferramenta para essa parcela da população. Assim, nosso objetivo com essa aplicação móvel para vem para auxiliar o cuidador a gerenciar rotinas do idoso com medicamentos, alimentação, exercícios e visualizar a pressão arterial e batimentos cardiacos em tempo real. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat',
                        
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 200, 20, 20),
                    child: Image.asset(
                      'assets/images/paulo.png',
                      width: 150,
                      height: 150,

                    ),
                  ),

                  Container(
                    child: const Text(
                      'Paulo Almeida\n'
                      'Sócio-Fundadador',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.fromLTRB(20, 200, 20, 20),
                    child: Image.asset(
                      'assets/images/richard.png',
                      width: 150,
                      height: 150,
                      
                    ),
                  ),

                  Container(
                    child: const Text(
                      'Richard Barros\n'
                      'Socio - Fundador',
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
