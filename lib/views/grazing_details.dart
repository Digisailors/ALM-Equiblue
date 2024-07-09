import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:equiblue/widgets/dropdown.dart';
import 'package:equiblue/widgets/heading.dart';
import 'package:equiblue/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class GrazingDetails extends StatefulWidget {
  const GrazingDetails({super.key});

  @override
  State<GrazingDetails> createState() => _GrazingDetailsState();
}

class _GrazingDetailsState extends State<GrazingDetails> {
  TextEditingController numberofanimalcontroller = TextEditingController();
  TextEditingController animalcontroller = TextEditingController();
  TextEditingController stockingratecontroller = TextEditingController();
  TextEditingController grasscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              heading(
                text: "Grazing Details",
              ),
              SizedBox(
                height: 20.0,
              ),
              Textformfield(
                hintText: "Cow",
                controller: animalcontroller,
                text: "Types of Animals grazing",
                image: Image.asset("assets/images/grass.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                hintText: "Daily",
                controller: numberofanimalcontroller,
                text: "No.of.Animals in grazing",
                image: Image.asset("assets/images/grass.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              dropdown(
                  items: ['Canal'], text: "Grazing Pattern", hintText: "Canal"),
              Textformfield(
                hintText: "Daily",
                controller: stockingratecontroller,
                text: "Stocking Rate",
                image: Image.asset("assets/images/grass.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              Textformfield(
                hintText: "Perennial ryegrass",
                controller: grasscontroller,
                text: "Types of Grasses",
                image: Image.asset("assets/images/grass.png"),
              ),
              SizedBox(
                height: 10.0,
              ),
              dropdown(
                  items: ['Yes'],
                  text: "Presence of Erosion Signs",
                  hintText: "Yes"),
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
