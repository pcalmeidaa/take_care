import 'dart:io';

// import 'package:app_agenda/helpers/contact_helper.dart';
// import 'package:app_agenda/ui/contact_page.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

const medicamentos = [];

enum OrderOptions { orderaz, orderza }

class TelaListaMedicacoes extends StatefulWidget {
  @override
  _TelaListaMedicacoesState createState() => _TelaListaMedicacoesState();
}

class _TelaListaMedicacoesState extends State<TelaListaMedicacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Medicamentos agendados"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[
            PopupMenuButton<OrderOptions>(
              itemBuilder: (context) => <PopupMenuEntry<OrderOptions>>[
                const PopupMenuItem(
                  child: Text("Ordenar de A-Z"),
                  value: OrderOptions.orderaz,
                ),
                const PopupMenuItem(
                  child: Text("Ordenar de Z-A"),
                  value: OrderOptions.orderza,
                )
              ],
              onSelected: _orderList,
            )
          ],
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('scheduleMedication');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemCount: 2,
            itemBuilder: (context, index) {
              return _contactCard(context, index);
            }));
  }

  Widget _contactCard(BuildContext context, int index) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/medicine.png"),
                      fit: BoxFit.cover)),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Medicamento",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "100 ml",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "À cada 8h",
                    style: TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
      onTap: () {},
    );
  }

  void _orderList(OrderOptions result) {
    switch (result) {
      case OrderOptions.orderaz:
        medicamentos.sort((a, b) {
          return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        });
        break;
      case OrderOptions.orderza:
        medicamentos.sort((a, b) {
          return b.name.toLowerCase().compareTo(a.name.toLowerCase());
        });
        break;
    }
    setState(() {});
  }
}
