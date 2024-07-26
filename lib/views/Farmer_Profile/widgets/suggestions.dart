import 'package:flutter/material.dart';

class suggestions extends StatelessWidget {
  String? heading;
  String? status;
  Color? containercolor;
  Color? contentcolor;

  suggestions({this.heading, this.status,this.containercolor,this.contentcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        width: 400.0,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey),
        ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    heading ?? "",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 35.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: containercolor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 6.0,
                          width: 6.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color:contentcolor),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          status ?? "",
                          style:
                              TextStyle(color:contentcolor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Suggestion:",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                  "Conduct a soil test to determine pH, nutrient levels, and soil texture. Wheat grows best in well-drained loamy soil with a pH of 6.0-7.5.")
            ],
          ),
        ));
  }
}
