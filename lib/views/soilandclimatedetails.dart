import 'package:equiblue/views/ownershipform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:file_picker/file_picker.dart';




class Soilandclimatedetails extends StatefulWidget {
  const Soilandclimatedetails({super.key});

  @override
  State<Soilandclimatedetails> createState() => SoilandclimatedetailsState();
}

class SoilandclimatedetailsState extends State<Soilandclimatedetails> {
  String? selectedvalue;
  List<String> dropdownvalue = ['Own Land'];
  String? Filepath;
  TextEditingController _rainfallcontroller = TextEditingController();
  TextEditingController _temperaturecontroller = TextEditingController();
  TextEditingController _evapotranspirationcontroller = TextEditingController();
  TextEditingController _soiltypecontroller = TextEditingController();
  TextEditingController _cultivablelandcontroller = TextEditingController();
  TextEditingController _grasslandcontroller = TextEditingController();
  TextEditingController _fallowlandcontroller = TextEditingController();

  void openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        Filepath = result.files.single.path!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                        "Soil and Climate Details",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Image.asset("assets/images/language_translator.png")
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                textformfield(
                  controller: _rainfallcontroller,
                  text: "Average Rainfall(mm)",
                  icon: Icon(Icons.public),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _temperaturecontroller,
                  text: "Temperature (°C)",
                  icon: Icon(Icons.public),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _evapotranspirationcontroller,
                  text: "Potential evapotranspiration (mm)",
                  icon: Icon(Icons.public),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _soiltypecontroller,
                  text: "Soil Type",
                  icon: Icon(Icons.public),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _cultivablelandcontroller,
                  text: "Area of Cultivable Land",
                  icon: Icon(Icons.public),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _grasslandcontroller,
                  text: "Area under Grass Land",
                  icon: Icon(Icons.public),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _fallowlandcontroller,
                  text: "Area under Fallow Land",
                  icon: Icon(Icons.public),
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: openFilePicker,
                  child: textformfield(
                    controller: TextEditingController(text: Filepath),
                    text: "Select File",
                    icon: Icon(Icons.file_upload),
                  ),
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
        ),
      ),
    );
  }
}
