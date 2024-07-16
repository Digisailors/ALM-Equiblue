import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:equiblue/widgets/heading.dart';
import 'package:equiblue/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:file_picker/file_picker.dart';

class Soilandclimatedetails extends StatefulWidget {
  const Soilandclimatedetails({super.key});

  @override
  State<Soilandclimatedetails> createState() => SoilandclimatedetailsState();
}

class SoilandclimatedetailsState extends State<Soilandclimatedetails> {
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
        appBar: Customappbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heading(text: "Soil and Climate Details"),
                SizedBox(
                  height: 20.0,
                ),
                textformfield(
                  controller: _rainfallcontroller,
                  text: "Average Rainfall(mm)",
                  imagepath:
                      Image.asset("assets/images/soilandclimatedetails.png"),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _temperaturecontroller,
                  text: "Temperature (°C)",
                  imagepath:
                      Image.asset("assets/images/soilandclimatedetails.png"),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _evapotranspirationcontroller,
                  text: "Potential evapotranspiration (mm)",
                  imagepath:
                      Image.asset("assets/images/soilandclimatedetails.png"),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _soiltypecontroller,
                  text: "Soil Type",
                  imagepath:
                      Image.asset("assets/images/soilandclimatedetails.png"),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _cultivablelandcontroller,
                  text: "Area of Cultivable Land",
                  imagepath:
                      Image.asset("assets/images/soilandclimatedetails.png"),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _grasslandcontroller,
                  text: "Area under Grass Land",
                  imagepath:
                      Image.asset("assets/images/soilandclimatedetails.png"),
                ),
                SizedBox(height: 10.0),
                textformfield(
                  controller: _fallowlandcontroller,
                  text: "Area under Fallow Land",
                  imagepath:
                      Image.asset("assets/images/soilandclimatedetails.png"),
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: openFilePicker,
                  child: textformfield(
                    text: "Soil Data Document",
                    icon: Icon(Icons.help),
                    picon: IconButton(
                        onPressed: () {
                          openFilePicker();
                        },
                        icon: Icon(Icons.attach_file)),
                    //     ticon: Icon(Icons.help),
                  ),
                ),
                Text(
                  "File should be jpeg, jpg, pdf",
                  style: TextStyle(
                      color: Color.fromRGBO(149, 149, 149, 1), fontSize: 12.0),
                ),
                SizedBox(height: 40.0),
                Center(child: custom_next_button())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
