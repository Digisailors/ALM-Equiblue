import 'package:equiblue/views/farmerlist%20and%20landuse/landuse_card.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:flutter/material.dart';

class LanduseReg extends StatefulWidget {
  const LanduseReg({super.key});

  @override
  State<LanduseReg> createState() => _LanduseRegState();
}

class _LanduseRegState extends State<LanduseReg> {
  String selectedvalue = "2024"; // Initial selected value
  List<String> items = ["2024", "2023"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/Landuse_background.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/plotimage.png"),
                      const Text("Plot")
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 418,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color.fromRGBO(46, 55, 164, 0.05),
                              ),
                              child:
                                  Image.asset("assets/images/landuseicon.png")),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text("Soil Health Assessment"),
                          Spacer(),
                          Container(
                            height: 30.0,
                            width: 70.0, // Adjust width as needed
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: DropdownButton<String>(
                            
                              value: selectedvalue,
                              items: items.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Divider(
                        thickness: 2.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const LanduseCard(
              text: 'Ownership Details',
              image: "assets/images/landicon1.png",
            ),
            const LanduseCard(
              text: "Land Details",
              image: "assets/images/landicon2.png",
            ),
            const LanduseCard(
              text: "Soil and Climate Details",
              image: "assets/images/landicon3.png",
            ),
            const LanduseCard(
              text: "Nutrient and Management Details",
              image: "assets/images/landicon4.png",
            )
          ],
        ),
      ),
    );
  }
}
