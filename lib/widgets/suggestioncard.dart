import 'package:flutter/material.dart';

class suggestioncard extends StatelessWidget {
  final Image? image;
  final String? text;

  suggestioncard({
    this.image,
    this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 57.0,
        width: 383.0,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(9.0)),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 8.0, bottom: 8.0, right: 8.0, left: 40.0),
          child: Row(
            children: [
              image ?? Image.asset("assets/images/suggestion1.png"),
              SizedBox(
                width: 20.0,
              ),
              Text(
                text ?? "Soil Testing",
                style: TextStyle(fontSize: 15.0),
              ),
              Spacer(),
              ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [Color(0xFF51C4FE), Color(0xFF9C42BA)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
