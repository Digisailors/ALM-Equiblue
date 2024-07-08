import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Irrigationdetails extends StatefulWidget {
  const Irrigationdetails({super.key});

  @override
  State<Irrigationdetails> createState() => IrrigationdetailsState();
}

class IrrigationdetailsState extends State<Irrigationdetails> {
  String? selectedvalue1;
  String? selectedvalue2;
  String? selectedvalue3;
  List<String> dropdownvalue = ['Canal'];
  List<String> dropdownvalue1 = ['Daily'];
  List<String> dropdownvalue2 = ['Drip Irrigation'];
  TextEditingController _wateringcontroller = TextEditingController();
  TextEditingController _drainagecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Customappbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                heading(text: "Irrigation Details"),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Source of Irrigation",
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "*", style: TextStyle(color: Colors.red))
                          ]),
                    ),
                    DropdownButtonFormField<String>(
                        value: selectedvalue1,
                        hint: Text('Choose an option'),
                        items: dropdownvalue.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedvalue1 = newValue;
                          });
                        },
                        decoration:
                            InputDecoration(border: OutlineInputBorder())),
                  ],
                ),
                SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Watering Frequency",
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "*", style: TextStyle(color: Colors.red))
                          ]),
                    ),
                    DropdownButtonFormField<String>(
                        value: selectedvalue2,
                        hint: Text('Choose an option'),
                        items: dropdownvalue1.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedvalue2 = newValue;
                          });
                        },
                        decoration:
                            InputDecoration(border: OutlineInputBorder())),
                  ],
                ),
                SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Irrigation method",
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "*", style: TextStyle(color: Colors.red))
                          ]),
                    ),
                    DropdownButtonFormField<String>(
                        value: selectedvalue3,
                        hint: Text('Choose an option'),
                        items: dropdownvalue2.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedvalue3 = newValue;
                          });
                        },
                        decoration:
                            InputDecoration(border: OutlineInputBorder())),
                  ],
                ),
                SizedBox(height: 10.0),
                textformfield(
                  text: 'Watering Method',
                  controller: _wateringcontroller,
                  imagepath: Image.asset("assets/images/irrigationdetails.png"),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _drainagecontroller,
                  text: "Drainage Pattern",
                  imagepath: Image.asset("assets/images/irrigationdetails.png"),
                ),
                SizedBox(height: 40.0),
                Center(child: custom_next_button())
              ],
            ),
          ),
        ));
  }
}
