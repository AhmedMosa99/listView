import 'package:flutter/material.dart';

class ListTil extends StatelessWidget {
  IconData icon;
  String label;
  String des;
  ListTil({this.icon, this.label,this.des});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(label),
        leading:Icon(icon),
        trailing: Text(des,style: TextStyle(color: Colors.green)),
      ),
    );
  }
}
