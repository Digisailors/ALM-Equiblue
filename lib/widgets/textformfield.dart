
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

part of "../views/ownershipform.dart";

class textformfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? text;
  final String? hinttext;
  final Icon? icon;
  final IconButton? picon;  
  final Image? imagepath;

  textformfield(
      {this.controller,
      this.text,
      this.icon,
      this.picon,
      this.hinttext,
      this.imagepath});

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
            RichText(
              text: TextSpan(
                  text: text ?? "Name",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: "*", style: TextStyle(color: Colors.red))
                  ]),
            ),
            // Check if iconData is not null
            //Icon(icon),
            Icon(icon?.icon)
          ],
        ),
        SizedBox(height: 05.0),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: imagepath,
            prefixIcon: picon,

            hintText: "",
            //Padding(
            //   padding: EdgeInsets.only(right: 3.0),
            //   child: SizedBox(
            //     height: 24.0,
            //     width: 24.0,
            //     child: Image.asset(
            //   //   //   imagepath ??
            //   //   //       "ALM-Equiblue/assets/images/irrigationdetails.png",
            //   //   // ),
            //   // ),
            // ),
            border: OutlineInputBorder(),
          ),
        ),

      ],
    );
  }
}
