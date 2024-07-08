import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class NutrientDetails extends StatefulWidget {
  const NutrientDetails({super.key});

  @override
  State<NutrientDetails> createState() => _NutrientDetailsState();
}

class _NutrientDetailsState extends State<NutrientDetails> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0),
              child: Row(
                children: [
                  Text("Land Details", style: TextStyle(fontSize: 16.0)),
                  Spacer(),
                  Image.asset(
                    "assets/topicon.png",
                    height: 27,
                    width: 27,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            dropdown(
                items: ['Organic', 'Inorganic'], text: "Types of Fertilizers"),
                SizedBox(height: 10.0),
            dropdown(items: ['items'], text: "NPR Ratio"),
            dropdown(items: [''], text: "Timing of Fertilizers"),
            dropdown(items: [''], text: "Current USage of Fertilizers")
          ],
        ),
      ),
    );
  }
}
