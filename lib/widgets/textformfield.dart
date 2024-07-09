
import 'package:flutter/material.dart';


class Textformfield extends StatefulWidget {
  final String text;
  final String hintText;


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

part of "../views/ownershipform.dart";


class _TextformfieldState extends State<Textformfield> {
// @override
//   void initState() {
//     super.initState();
//     controller = TextEditingController();
//   }
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

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

            RichText(
              text: TextSpan(
                  text: text ?? "Name",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: "*", style: TextStyle(color: Colors.red))
                  ]),


            Text(widget.text),
            SizedBox(
              width: 3.0,>>>>>>> main
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
