import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/dropdown.dart';
import 'package:equiblue/widgets/heading.dart';
import 'package:equiblue/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class NutrientDetails extends StatefulWidget {
  const NutrientDetails({super.key});

  @override
  State<NutrientDetails> createState() => _NutrientDetailsState();
}

class _NutrientDetailsState extends State<NutrientDetails> {
  TextEditingController timecontroller = TextEditingController();
  TextEditingController ratiocontroller = TextEditingController();
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
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              heading(
                text: "Nutrient Management Details",
              ),
              SizedBox(
                height: 20.0,
              ),
              dropdown(
                items: ['Organic', 'Inorganic'],
                text: "Types of Fertilizers",
                hintText: 'Organic',
              ),
              SizedBox(height: 10.0),
              Textformfield(
                hintText: "5:7:8",
                controller: ratiocontroller,
                text: "NPK Ratio",
                image: Image.asset("assets/images/nutrient_icon.png"),
              ),
              SizedBox(height: 10.0),
              Textformfield(
                hintText: 'Weekly',
                controller: timecontroller,
                text: "Timing of Fertilizers",
                image: Image.asset("assets/images/nutrient_icon.png"),
              ),
              SizedBox(height: 10.0),
              dropdown(
                items: ['Balanced Fertilization', 'Unbalanced Fertilization'],
                text: "Current Fertilizer Use Practices",
                hintText: 'Balanced Fertilizer',
              ),
              SizedBox(height: 10.0),
              dropdown(
                items: ['Low', 'Medium', 'High'],
                text: "Organic Matter Content",
                hintText: 'Low(1-2%)',
              ),
              SizedBox(height: 20.0),
              custom_next_button()
            ],
          ),
        ),
      ),
    );
  }
}
