import 'package:flutter/material.dart';

class RegistrationDetails extends StatefulWidget {
  const RegistrationDetails({super.key});

  @override
  State<RegistrationDetails> createState() => _RegistrationDetailsState();
}

class _RegistrationDetailsState extends State<RegistrationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Equible"),
    
    leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),),);
  }
}