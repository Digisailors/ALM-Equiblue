import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.menu,
        color: const Color.fromRGBO(0, 97, 228, 1),
      ),
      title: Row(
        children: [
          Image.asset("assets/equiblue_logo.png"),
          Text(
            "EQUI",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "BLUE",
            style: TextStyle(
                color: const Color.fromRGBO(0, 97, 228, 1),
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      toolbarHeight: 74.0,
      shadowColor: Colors.white,
    );
  }
}
