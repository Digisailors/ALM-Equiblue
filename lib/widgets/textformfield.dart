import 'package:flutter/material.dart';


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
            ),
            // Check if iconData is not null
            //Icon(icon),
            Icon(icon?.icon)
          ],
        ),
        SizedBox(height: 05.0),
        TextFormField(
          controller: controller,
          maxLines: null,
          keyboardType: TextInputType.multiline,
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
