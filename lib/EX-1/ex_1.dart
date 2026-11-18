import "package:flutter/material.dart";
import "package:practice_w7/EX-1/select_button.dart";

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: const Center(
        child: Column(
          spacing: 8,
          children: [
            SelectButton(),
            SelectButton(),
            SelectButton(),
            SelectButton(),
          ],
        ),
      ),
    ),
  ),
);
