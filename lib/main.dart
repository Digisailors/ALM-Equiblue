
import 'package:equiblue/view/grazing_details.dart';
import 'package:equiblue/view/planting_details.dart';
import 'package:equiblue/view/land_details.dart';
import 'package:equiblue/view/nutrient_details.dart';
import 'package:equiblue/view/registration_details.dart';
import 'package:equiblue/views/irrigationdetails.dart';
import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/views/soilandclimatedetails.dart';
import 'package:equiblue/views/tillage_residuedetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LandDetails());
  }
}
