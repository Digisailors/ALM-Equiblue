import 'package:equiblue/widgets/registration_card.dart';
import 'package:flutter/material.dart';

class RegistrationDetails extends StatefulWidget {
  const RegistrationDetails({super.key});

  @override
  State<RegistrationDetails> createState() => _RegistrationDetailsState();
}

class _RegistrationDetailsState extends State<RegistrationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: const Color.fromRGBO(0, 97, 228, 1),
        ),
        title: Row(
          children: [
            Image.asset("assets/equiblue_logo.png"),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Registration Details",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          registration_card(
            cardText: 'Ownership Details',
            ontap: () {},
          ),
          registration_card(cardText: "Climate Details", ontap: () {}),
          registration_card(
              cardText: "Nutrient Management Details", ontap: () {}),
          registration_card(
            cardText: 'Irrigation Details',
            ontap: () {},
          ),
          registration_card(cardText: "Tillage/Residue Details", ontap: () {}),
          registration_card(
              cardText: "Planting and Harvesting Details", ontap: () {}),
          registration_card(cardText: "Grazing Details", ontap: () {})
        ],
      ),
    );
  }
}
