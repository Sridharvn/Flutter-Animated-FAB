// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import "package:flutter/material.dart";

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

double _width = 50;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Floating Action Button")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        width: _width,
        height: 50,
        child: FloatingActionButton(
          shape: StadiumBorder(),
          onPressed: () {
            setState(() {
              _width = _width == 375 ? 50 : 375;
            });
          },
          child: Icon(Icons.camera_alt),
        ),
      ),
      body: Center(
          child: Text(
        "Please click the Floating Action Button to change width",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
      )),
    );
  }
}
