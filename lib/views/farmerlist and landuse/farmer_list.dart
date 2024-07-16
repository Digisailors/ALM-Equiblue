import 'package:equiblue/views/farmerlist%20and%20landuse/landuse_header.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/dropdown.dart';
import 'package:flutter/material.dart';
part "farmerlist_card.dart";

class FarmerList extends StatefulWidget {
  const FarmerList({super.key});

  @override
  State<FarmerList> createState() => _FarmerListState();
}

class _FarmerListState extends State<FarmerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LanduseHeader(
              search: "Name",
            ),
            SizedBox(
              height: 20.0,
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Farmerlist_card(
                          image: 'assets/images/farmerprofile.png',
                          text: 'Gopala Krishnan',
                          plotincome: '6,00,000 LPA',
                        )
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

