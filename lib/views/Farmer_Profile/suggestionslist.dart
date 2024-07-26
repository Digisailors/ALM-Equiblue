import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/heading.dart';

import 'package:equiblue/widgets/suggestioncard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Suggestionslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Customappbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              heading(
                text: "Suggestion List",
              ),
              SizedBox(
                height: 20.0,
              ),
              suggestioncard(),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion2.png",
                ),
                text: "Soil pH Adjustment",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion3.png",
                ),
                text: "Organic Matter Addition details",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion4.png",
                ),
                text: "Soil Treatment with Gypsum",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion5.png",
                ),
                text: "Erosion Control Measure",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images\/suggestion6.png",
                ),
                text: "Drainage Improvement",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion7.png",
                ),
                text: "Enhancing Soil Microbial Activity",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion8.png",
                ),
                text: "Soil Moisture Monitoring",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion9.png",
                ),
                text: "Regular Soil Health Assessment",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion10.png",
                ),
                text: "Mulching",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/sugggestion11.png",
                ),
                text: "No-Till Farming",
              ),
              SizedBox(
                height: 10.0,
              ),
              suggestioncard(
                image: Image.asset(
                  "assets/images/suggestion12.png",
                ),
                text: "Green Manure Crops",
              ),
            ],
          ),
        ));
  }
}
