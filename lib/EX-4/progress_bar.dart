import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;

  const ProgressBar({super.key, this.progress = 0.0});

  @override
  Widget build(BuildContext context) {
    final fillColor = Color.lerp(Colors.white, Colors.black, progress);

    return Container(
      width: 400,
      height: 40,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progress,
        child: Container(decoration: BoxDecoration(color: fillColor)),
      ),
    );
  }
}
