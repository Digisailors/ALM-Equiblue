import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:equiblue/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class TillageResiduedetails extends StatefulWidget {
  const TillageResiduedetails({super.key});

  @override
  State<TillageResiduedetails> createState() => _TillageResiduedetailsState();
}

class _TillageResiduedetailsState extends State<TillageResiduedetails> {
  TextEditingController _tillagedepthcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            heading(
              text: "Tillage/Residue Details",
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  dropdown(
                    items: ["No-Till"],
                    text: "Type of Tillage",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  dropdown(
                    items: ["Daily"],
                    text: "Tillage frequency",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  textformfield(
                    controller: _tillagedepthcontroller,
                    imagepath:
                        Image.asset("assets/images/tillageandresidue.png"),
                    text: "Tillage Depth",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  dropdown(items: ["Burning"], text: "Residue Management"),
                  SizedBox(height: 40.0),
                  Center(child: custom_next_button()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
