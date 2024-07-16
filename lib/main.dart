import 'package:equiblue/views/Framer_Profile/suggestionslist.dart';
import 'package:equiblue/views/irrigationdetails.dart';
import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/views/soilandclimatedetails.dart';
import 'package:equiblue/views/tillage_residuedetails.dart';

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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Soilandclimatedetails(),
    );
  }
}
