import 'package:equiblue/views/irrigationdetails.dart';
import 'package:equiblue/views/ownershipform.dart';
import 'package:equiblue/views/soilandclimatedetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Irrigationdetails(),
    );
  }
}