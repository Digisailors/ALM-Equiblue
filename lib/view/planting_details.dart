import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/dropdown.dart';
import 'package:equiblue/widgets/heading.dart';
import 'package:equiblue/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlantingDetails extends StatefulWidget {
  const PlantingDetails({super.key});

  @override
  State<PlantingDetails> createState() => _PlantingDetailsState();
}

class _PlantingDetailsState extends State<PlantingDetails> {
  @override
  TextEditingController cropcontroller = TextEditingController();
  TextEditingController treecontroller = TextEditingController();
  TextEditingController yieldproductcontroller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              heading(
                text: "Planting and Harvesting Details",
              ),
              SizedBox(
                height: 20.0,
              ),
              dropdown(
                items: ['Rice', 'Wheat'],
                text: "Crop Sown",
                hintText: 'Rice',
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                hintText: "567",
                controller: yieldproductcontroller,
                text: "Yield Produce (t/ha)",
               image: Image.asset("assets/images/crop.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              dropdown(
                items: ['Daily', 'Weekly', 'Monthly'],
                text: "Roataional Frequency",
                hintText: 'Daily',
              ),
              SizedBox(
                height: 10.0,
              ),
              dropdown(
                items: ['Yes', 'No'],
                text: "Cover Crop Usage",
                hintText: 'Yes',
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                  hintText: "Mustard",
                  controller: cropcontroller,
                  image: Image.asset("assets/images/crop.png"),
                  text: "Type of Cover Crop Used"),
              SizedBox(
                height: 10.0,
              ),
              dropdown(
                items: ['Yes', 'No'],
                text: "Agroforestery Practices",
                hintText: 'Yes',
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                  hintText: "Neem",
                  controller: treecontroller,
                 image: Image.asset("assets/images/crop.png"),
                  text: "Types of Tree Integrated"),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.add,
                    color: Color.fromRGBO(24, 104, 199, 1),
                  ),
                  Text(
                    "Add Request",
                    style: TextStyle(color: Color.fromRGBO(24, 104, 199, 1)),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              custom_next_button()
            ],
          ),
        ),
      ),
    );
  }
}
