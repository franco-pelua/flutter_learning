import 'package:flutter/material.dart';
import 'package:advanced_basics/home.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
    width: double.infinity,
    color: Colors.purple,
    child: const Home(),
  ))));
}
