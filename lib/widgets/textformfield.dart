import 'package:flutter/material.dart';

class Textformfield extends StatefulWidget {
  final String text;
  late final String hintText;
  final Icon? icon;
  final Image? image;
  final TextEditingController controller;
  Textformfield(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.text,
      this.icon,
      this.image});

  @override
  State<Textformfield> createState() => _TextformfieldState();
}

class _TextformfieldState extends State<Textformfield> {
// @override
//   void initState() {
//     super.initState();
//     controller = TextEditingController();
//   }
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.text),
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
          controller: widget.controller,
          decoration: InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(),
              suffixIcon: widget.image
              // suffixIcon: widget.icon,
              ),
        )
      ],
    );
  }
}
