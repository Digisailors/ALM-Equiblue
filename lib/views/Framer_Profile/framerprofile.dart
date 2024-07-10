import 'package:equiblue/widgets/appbar.dart';
import 'package:equiblue/widgets/custom_next_button.dart';
import 'package:flutter/material.dart';

class FramerProfile1 extends StatefulWidget {
  FramerProfile1({Key? key}) : super(key: key);

  @override
  State<FramerProfile1> createState() => FramerProfile1State();
}

class FramerProfile1State extends State<FramerProfile1>
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/profile.png"),
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
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: "Overview"),
                Tab(text: "Land Details"),
                Tab(text: "Advice")
              ],
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 550.0,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Ownershipdetails(), // Replace with your actual Overview content
                  landdetails(), // Replace with your actual Land Details content
                  Advice(), // Replace with your actual Advice content
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
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
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
        body: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
        child: Column(
          children: [
            Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [BoxShadow(color: Colors.grey)],
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              child: Column(
                                children: [
                                  Text("Agricultural Land"),
                                  SizedBox(height: 8.0),
                                  RichText(
                                    text: TextSpan(
                                        text: "Location:",
                                        style: TextStyle(color: Colors.black),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: "12/1 South east",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      12, 92, 215, 1))),
                                        ]),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text("Farm Size : 0.3 Ha"),
                                  SizedBox(height: 8.0),
                                  Text("Soil Type : Black soil"),
                                  SizedBox(height: 8.0),
                                  Text(
                                      "Irrigation Facilities : Drip Irrigation")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 80.0),
                              child: Column(
                                children: [
                                  Container(
                                      width: 111.0,
                                      child:
                                          custom_next_button(text: "View Map"))
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  // child: Table(
                  //   columnWidths: {
                  //     0: FixedColumnWidth(150.0),
                  //     1: FixedColumnWidth(100.0)
                  //   },
                  //   children: [
                  //     TableRow(
                  //       children: [Text("Agricultural Land"), Text("")],
                  //     ),
                  //     TableRow(
                  //       children: [
                  //         Text(""),
                  //         custom_next_button(text: "View Map")
                  //       ],
                  //     ),
                  //   ],
                  // )
                )),
          ],
        ),
      ),
    ));
  }
}

class Advice extends StatelessWidget {
  Advice({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
