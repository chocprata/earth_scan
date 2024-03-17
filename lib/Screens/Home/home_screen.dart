import 'package:earth_scan/constants.dart';
import 'package:flutter/material.dart';
import 'package:earth_scan/Screens/Home/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColour,
      body: Body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: PrimaryColour,
        child: Icon(Icons.camera),
        onPressed: () {},
      ),
    );
  }
}
