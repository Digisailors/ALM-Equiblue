import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  final List<String> items;
  final String text;

  dropdown({
    super.key,
    required this.items,
    required this.text,
  });

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  final List<String> dropdownItems = ['Grassland', '2'];
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
            hint: Text(""),
            onChanged: (String? newvalue) => setState(() {
                  dropdown = newvalue!;
                }),
            items: dropdownItems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList()),
      ],
    );
  }
}
