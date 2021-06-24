import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  IconData icon;
  String label;
  Cards({this.icon, this.label});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Card(
    margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 10),
                child:Icon(icon,color: Colors.grey.shade600,),
              ),
              Text(label,style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
