import 'package:flutter/material.dart';

class registration_card extends StatefulWidget {
  late VoidCallback ontap;
  late String cardText;
  registration_card({super.key, required this.cardText, required this.ontap});

  @override
  State<registration_card> createState() => _registration_cardState();
}

class _registration_cardState extends State<registration_card> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: 60,
          width: 320,
          child: GestureDetector(
            onTap: () {
              widget.ontap();
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              color: _isHovered
                  ? Colors.white
                  : const Color.fromRGBO(245, 245, 245, 1),
              // elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Icon(
                    //   Icons.insert_drive_file_outlined,
                    //   color: _isTapped ? Colors.blue : Colors.black,
                    // ),
                    Image.asset("assets/driveImage.png"),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      widget.cardText,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


