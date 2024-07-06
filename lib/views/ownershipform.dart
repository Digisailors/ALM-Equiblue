import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
part "../widgets/textformfield.dart";


class Ownershipform extends StatefulWidget {
  const Ownershipform({super.key});

  @override
  State<Ownershipform> createState() => _OwnershipformState();
}

class _OwnershipformState extends State<Ownershipform> {
  String? selectedvalue;
  List<String> dropdownvalue = ['Own Land'];
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _locationcontroller = TextEditingController();
  TextEditingController _occupationcontroller = TextEditingController();
  TextEditingController _incomecontroller = TextEditingController();
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
                        "Ownership Details",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Image.asset("assets/images/language_translator.png")
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Image.asset("assets/images/uploadimage.png"),
                SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 43),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      backgroundColor: Colors.white),
                  child: Text(
                    "Upload Photo",
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                textformfield(
                  controller: _namecontroller,
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _locationcontroller,
                  text: "Location",
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _occupationcontroller,
                  text: "Occupation",
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Ownership",
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
                textformfield(
                  controller: _incomecontroller,
                  text: "Income",
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
