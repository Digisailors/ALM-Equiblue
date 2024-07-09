import 'package:equiblue/views/farmerlist%20and%20landuse/farmer_list.dart';
import 'package:equiblue/views/farmerlist%20and%20landuse/landuse_header.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Landuse extends StatefulWidget {
  const Landuse({super.key});

  @override
  State<Landuse> createState() => _LanduseState();
}

class _LanduseState extends State<Landuse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LanduseHeader(
              search: "Location",
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Farmerlist_card(
                            image: "assets/images/plotimage.png",
                            text: "Plot - 1",
                            plotincome: "Plot size: 34 ha")
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
