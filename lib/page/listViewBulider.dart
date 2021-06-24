import 'package:flutter/material.dart';
import 'package:listgsg/Widgets/ListTile.dart';

class ListBulider extends StatelessWidget {
    List<ListTil> list = [
    ListTil(
      label: "List item 0",
      icon: Icons.list_sharp,
      des: "GFG",
    ),
    ListTil(
      label: "List item 1",
      icon: Icons.list_sharp,
      des: "GFG",
    ),
    ListTil(
      label: "List item 2",
      icon: Icons.list_sharp,
      des: "GFG",
    ),
    ListTil(
      label: "List item 3",
      icon: Icons.list_sharp,
      des: "GFG",
    ),
       ListTil(
      label: "List item 4",
      icon: Icons.list_sharp,
      des: "GFG",
    ),
       ListTil(
      label: "List item 5",
      icon: Icons.list_sharp,
      des: "GFG",
    ),
       ListTil(
      label: "List item 6",
      icon: Icons.list_sharp,
      des: "GFG",
    ),

  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("listViews.Bulider"),
      ),
      body:  ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return new ListTil(
                icon: list[index].icon,
                label: list[index].label,
                des: list[index].des,
              );
            })
    );
  }
}