import 'package:equiblue/widgets/dropdown.dart';
import 'package:equiblue/widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        padding: const EdgeInsets.all(12.0),
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
            Textformfield(
              hintText: '5',
              controller: plotcontroller,
              text: 'Plot Number',
            ),
            SizedBox(
              height: 10.0,
            ),
            Textformfield(
              hintText: "5",
              controller: landcontroller,
              text: 'Area of Land',
            ),
            SizedBox(
              height: 10.0,
            ),
            dropdown(
              items: ["Grassland", 'Grass'],
              text: 'Land Use Type',
            ),
            Textformfield(
              hintText: "20 Ha",
              controller: watersourcecontroller,
              text: 'Nearby Water Source',
            ),
            SizedBox(
              height: 10.0,
            ),
            Textformfield(
              hintText: "20 m",
              controller: distancecontroller,
              text: 'Distance from the Water Source',
            ),
            Spacer(),
            Container(
                height: 34,
                width: 108,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: const Color.fromRGBO(24, 104, 199, 1),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
