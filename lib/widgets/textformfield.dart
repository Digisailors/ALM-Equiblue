import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  final String text;
  late final String hintText;
  final TextEditingController controller;
  Textformfield(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.text});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(text),
            SizedBox(
              width: 3.0,
            ),
            Text(
              "*",
              style: TextStyle(color: Colors.red, fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(),
              // suffix: Image.asset("assets/formicon.png"),

              suffixIcon: Icon(Icons.public)),
        )
      ],
    );
  }
}
