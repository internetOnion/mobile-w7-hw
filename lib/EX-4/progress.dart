import 'package:flutter/material.dart';
import 'package:practice_w7/EX-4/progress_bar.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProgressState();
  }
}

class _ProgressState extends State<Progress> {
  double progress = 0.0;

  void increaseProgress() {
    setState(() {
      progress += 0.1;
      if (progress > 1.0) {
        progress = 1.0;
      }
    });
  }

  void decreaseProgress() {
    setState(() {
      progress -= 0.1;
      if (progress < 0.0) {
        progress = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${(progress * 100).toStringAsFixed(0)}%",
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        ProgressBar(progress: progress),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: decreaseProgress,
              icon: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: increaseProgress,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
