import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  final List<String> items;
  final String text;

  final String? hintText;


  dropdown({
    super.key,
    required this.items,
    required this.text,

   this.hintText,

  });

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String? dropdown;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(widget.text),
            Text(
              "*",
              style: TextStyle(color: Colors.red, fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        DropdownButtonFormField<String>(

      
            value: dropdown,
            decoration: InputDecoration(border: OutlineInputBorder()),
            hint: Text(widget.hintText ?? "Choose an option"),
            onChanged: (String? newvalue) => setState(() {
                  dropdown = newvalue!;
                }),
            items: widget.items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList()),
            
           

      ],
    );
  }
}
