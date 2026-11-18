import "package:flutter/material.dart";

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool isSelected = false;
  Color bgColor = Colors.blue.shade50;
  Color fgColor = Colors.black;
  String text = "Not selected";

  void onToggle() {
    setState(() {
      if (!isSelected) {
        bgColor = Colors.blue.shade500;
        fgColor = Colors.white;
        text = "Selected";
      } else {
        bgColor = Colors.blue.shade50;
        fgColor = Colors.black;
        text = "Not selected";
      }

      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
        ),
        onPressed: onToggle,
        child: Center(child: Text(text)),
      ),
    );
  }
}
