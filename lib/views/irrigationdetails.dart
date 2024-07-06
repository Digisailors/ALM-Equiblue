import 'package:equiblue/views/ownershipform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Irrigationdetails extends StatefulWidget {
  const Irrigationdetails({super.key});

  @override
  State<Irrigationdetails> createState() => IrrigationdetailsState();
}

class IrrigationdetailsState extends State<Irrigationdetails> {
  String? selectedvalue;
  List<String> dropdownvalue = ['Canal'];
  List<String> dropdownvalue1 = ['Daily'];
  List<String> dropdownvalue2 = ['Drip Irrigation'];
  TextEditingController _wateringcontroller = TextEditingController();
  TextEditingController _drainagecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Row(
            children: [
              Image.asset("assets/images/equiblue_logo 1.png"),
              Text("EQUIBLUE")
            ],
          ),
          toolbarHeight: 74.0,
          shadowColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 28.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Irrigation Details",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Image.asset("assets/images/language_translator.png")
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Source of Irrigation",
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      DropdownButtonFormField<String>(
                          value: selectedvalue,
                          hint: Text('Choose an option'),
                          items: dropdownvalue.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedvalue = newValue;
                            });
                          },
                          decoration:
                              InputDecoration(border: OutlineInputBorder())),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Watering Frequency",
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      DropdownButtonFormField<String>(
                          value: selectedvalue,
                          hint: Text('Choose an option'),
                          items: dropdownvalue1.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedvalue = newValue;
                            });
                          },
                          decoration:
                              InputDecoration(border: OutlineInputBorder())),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Irrigation method",
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "*",
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                      DropdownButtonFormField<String>(
                          value: selectedvalue,
                          hint: Text('Choose an option'),
                          items: dropdownvalue2.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedvalue = newValue;
                            });
                          },
                          decoration:
                              InputDecoration(border: OutlineInputBorder())),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  text: 'Watering Method',
                  controller: _wateringcontroller,
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _drainagecontroller,
                  text: "Drainage Pattern",
                ),
                SizedBox(height: 40.0),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(108, 43),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0))),
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    )),
              ],
            ),
          ),
        ));
  }
}
