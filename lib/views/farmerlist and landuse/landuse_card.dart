import 'package:flutter/material.dart';

class LanduseCard extends StatelessWidget {
  final String text;
  final String? image;
  const LanduseCard({super.key, required this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 57.0,
        width: 383.0,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 30, right: 20, bottom: 10.0),
            child: Row(
              children: [
                Image.asset(
                  image ?? "",
                  height: 58,
                  width: 59,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(text)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
