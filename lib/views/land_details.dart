import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:equiblue/widgets/dropdown.dart';
import 'package:equiblue/widgets/heading.dart';
import 'package:equiblue/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class LandDetails extends StatefulWidget {
  const LandDetails({super.key});

  @override
  State<LandDetails> createState() => _LandDetailsState();
}

class _LandDetailsState extends State<LandDetails> {
  TextEditingController plotcontroller = TextEditingController();
  TextEditingController landcontroller = TextEditingController();
  TextEditingController watersourcecontroller = TextEditingController();
  TextEditingController distancecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
        leading: Icon(
          Icons.menu,
          color: const Color.fromRGBO(0, 97, 228, 1),
        ),
        title: Row(
          children: [
            Image.asset("assets/images/equiblue_logo.png"),
            Text(
              "EQUI",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "BLUE",
              style: TextStyle(
                  color: const Color.fromRGBO(0, 97, 228, 1),
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        toolbarHeight: 74.0,
        shadowColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              heading(
                text: "Land Details",
              ),
              SizedBox(
                height: 20.0,
              ),
              Textformfield(
                hintText: '5',
                controller: plotcontroller,
                text: 'Plot Number',
                image: Image.asset("assets/images/globe.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                hintText: "5",
                controller: landcontroller,
                text: 'Area of Land',
                image: Image.asset("assets/images/globe.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              dropdown(
                items: ["Grassland", 'Grass'],
                text: 'Land Use Type',
                hintText: 'Grassland',
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                hintText: "20 Ha",
                controller: watersourcecontroller,
                text: 'Nearby Water Source',
                image: Image.asset("assets/images/globe.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                hintText: "20 m",
                controller: distancecontroller,
                text: 'Distance from the Water Source',
                image: Image.asset("assets/images/globe.png"),
              ),
              SizedBox(
                height: 40.0,
              ),
              custom_next_button()
            ],
          ),
        ),
      ),
    );
  }
}
