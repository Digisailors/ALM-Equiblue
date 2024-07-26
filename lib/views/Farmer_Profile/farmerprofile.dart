import 'package:equiblue/views/Farmer_Profile/widgets/suggestions.dart';
import 'package:equiblue/views/Farmer_Profile/widgets/agriculturalland.dart';
import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
part "widgets/cropssown.dart";

class FarmerProfile1 extends StatefulWidget {
  FarmerProfile1({Key? key}) : super(key: key);

  @override
  State<FarmerProfile1> createState() => FramerProfile1State();
}

class FramerProfile1State extends State<FarmerProfile1>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 114.0,
                  width: double.infinity,
                  color: Color.fromRGBO(24, 104, 199, 1),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Column(
                    children: [
                      Text(
                        "My Profile",
                        style: TextStyle(color: Colors.white, fontSize: 15.0,fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/profile.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Gopala Krishnan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text("BMMS ID: 5677 7888"),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Color.fromRGBO(0, 97, 228, 1))),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                      color: Color.fromRGBO(0, 97, 228, 1),
                      borderRadius: BorderRadius.circular(20.0)),
                  controller: _tabController,
                  tabs: [
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Tab(text: "Overview"),
                    )),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Tab(text: "Land Details"),
                    )),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Tab(text: "Suggestions"),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 550.0,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Ownershipdetails(), // Replace with your actual Overview content
                  landdetails(), // Replace with your actual Land Details content
                  Suggestions(), // Replace with your actual Advice content
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ownershipdetails extends StatefulWidget {
  Ownershipdetails({Key? key}) : super(key: key);

  @override
  State<Ownershipdetails> createState() => OwnershipdetailsState();
}

class OwnershipdetailsState extends State<Ownershipdetails> {
  String selectedvalue = "2024"; // Initial selected value
  List<String> items = ["2024"]; // List of dropdown items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/ownershipform.png"),
                          SizedBox(width: 20.0),
                          Text(
                            "Ownership Details",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromRGBO(46, 55, 164, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Divider(),
                      SizedBox(height: 10.0),
                      Table(
                        columnWidths: {
                          0: FixedColumnWidth(150.0),
                          1: FixedColumnWidth(100.0),
                        },
                        children: [
                          TableRow(
                            children: [
                              Text("Name"),
                              Text(
                                "Bruce Willis",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(height: 5.0),
                              SizedBox(height: 5.0),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("Location"),
                              Text(
                                "Vilathikulam",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(height: 5.0),
                              SizedBox(height: 5.0),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("Occupation"),
                              Text(
                                "Farming",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(height: 5.0),
                              SizedBox(height: 5.0),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("Ownership"),
                              Text(
                                "Ownland",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(height: 5.0),
                              SizedBox(height: 5.0),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("Income (per annum)"),
                              Text(
                                "8 LPA",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(height: 5.0),
                              SizedBox(height: 5.0),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text("Farm Size"),
                              Text(
                                "30 Ha",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/ownershipformgraph.png"),
                            SizedBox(width: 20.0),
                            Text(
                              " Crop and Yield Produced",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(46, 55, 164, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 12.0),
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
                      ),
                      SizedBox(height: 10.0),
                      Divider(),
                      SizedBox(height: 10.0),
                      Stack(
                        children: [
                          Image.asset("assets/images/graph1.png"),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, left: 50.0),
                            child: Image.asset("assets/images/graph2.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class landdetails extends StatelessWidget {
  landdetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 8.0, top: 10.0),
        child: Column(
          children: [
            agriculturalland(text: "Farm Size : 0.3 Ha"),
            SizedBox(
              height: 20.0,
            ),
            agriculturalland(text: "Acre : 0.3")
          ],
        ),
      ),
    ));
  }
}

class Suggestions extends StatelessWidget {
  Suggestions({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 8.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Suggestions",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          suggestions(
            heading: "Soil Testing",
            status: "Pending",
            containercolor: Color.fromRGBO(244, 234, 255, 1),
            contentcolor: Color.fromRGBO(142, 48, 255, 1),
          ),
          SizedBox(
            height: 60.0,
          ),
          Text(
            "Previous Suggestions",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          suggestions(
            heading: "Drainage Improvement",
            status: "Completed",
            containercolor: Color.fromRGBO(226, 251, 195, 1),
            contentcolor: Color.fromRGBO(44, 103, 8, 1),
          ),
        ],
      ),
    ));
  }
}
