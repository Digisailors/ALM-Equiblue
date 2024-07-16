import 'package:equiblue/views/Framer_Profile/framerprofile.dart';
import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:flutter/material.dart';

class agriculturalland extends StatelessWidget {
  String? text;
  agriculturalland({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [BoxShadow(color: Colors.grey)],
          color: Colors.white),
      child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Agricultural Land",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 12.0),
                        RichText(
                          text: TextSpan(
                              text: "Location:",
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "12/1 South east",
                                    style: TextStyle(
                                        color: Color.fromRGBO(12, 92, 215, 1))),
                              ]),
                        ),
                        SizedBox(height: 8.0),
                        Text(text ?? ""),
                        SizedBox(height: 8.0),
                        Text("Soil Type : Black soil"),
                        SizedBox(height: 8.0),
                        Text("Irrigation Facilities : Drip Irrigation")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 80.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                            width: 111.0,
                            child: custom_next_button(text: "View Map"))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Crop Sown:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      cropssown(text: "Wheat"),
                      SizedBox(height: 10.0),
                      cropssown(text: "Corn")
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
