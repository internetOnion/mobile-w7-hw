import 'package:flutter/material.dart';
import 'package:practice_w7/EX-4/progress.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Progress Bar")),
        body: Center(child: const Progress()),
      ),
    ),
  );
}
