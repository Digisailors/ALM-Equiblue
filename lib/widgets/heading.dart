

import 'package:flutter/material.dart';


part of "../views/ownershipform.dart";


class heading extends StatelessWidget {
  final String? text;

  heading({this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text ?? "Ownership Details",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        Image.asset("assets/images/language_translator.png")
      ],
    );
  }
}
