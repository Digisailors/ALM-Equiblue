
import 'package:flutter/material.dart';
import 'package:equiblue/views/Framer_Profile/framerprofile.dart';
import 'package:equiblue/views/irrigationdetails.dart';
import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/views/soilandclimatedetails.dart';
import 'package:equiblue/views/tillage_residuedetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FramerProfile1(),
    );
  }
}
