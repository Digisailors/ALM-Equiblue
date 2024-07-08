import 'package:flutter/material.dart';

class custom_next_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 34,
      width: 108,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: const Color.fromRGBO(24, 104, 199, 1),
        ),
        onPressed: () {},
        child: Text(
          "Next",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

