import 'package:flutter/material.dart';
import 'package:listgsg/Widgets/CardWidget.dart';
import 'package:listgsg/page/listViewBulider.dart';

void main() {
  runApp(MaterialApp(
    home: ListBulider(),
  ));
}

class MyMapp extends StatelessWidget {

  List<Cards> list = [
    Cards(
      label: "bike",
      icon: Icons.bike_scooter,
    
    ),
    Cards(
      label: "boat",
      icon: Icons.car_rental,
    ),
    Cards(
      label: "bus",
      icon: Icons.bus_alert,
    ),
    Cards(
      label: "railway",
      icon: Icons.railway_alert,
    ),
    Cards(label: "run", icon: Icons.run_circle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("listViews"),
      ),
      body: ListView(
        children: [
         ...list,
        ],
      ),
    );
  }
}
