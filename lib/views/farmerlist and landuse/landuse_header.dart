import 'package:flutter/material.dart';

class LanduseHeader extends StatefulWidget {
  final String? search;
  const LanduseHeader({super.key, this.search});

  @override
  State<LanduseHeader> createState() => _LanduseHeaderState();
}

class _LanduseHeaderState extends State<LanduseHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(233, 242, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: BackButton()),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Land Use",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 97, 228, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                )),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            cursorHeight: 47,
            decoration: InputDecoration(
                // filled: true,
                // fillColor: const Color.fromRGBO(255, 255, 255, 1),
                prefixIcon: Icon(Icons.search),
                hintText: "Search by ${widget.search}/Address",
                border: OutlineInputBorder(
                    // borderRadius: BorderRadius.zero,
                    // borderSide: BorderSide.none
                    )),
          ),
        ),
      ],
    );
  }
}

