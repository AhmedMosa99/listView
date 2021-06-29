import 'package:flutter/material.dart';

class ShowProducts extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection:Axis.vertical,
              child: Row(children: [
               Container(
                 child: Text("as"),
           decoration: BoxDecoration(
             image:DecorationImage(
               image: AssetImage(
                 "",
               ),
             ),
          
             
             ),
           
           ),

             
              ],),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text("Product"),
            ),
          ),
          ListView(
          ),
          ],
          
        ),
      ),
    );
  }
}