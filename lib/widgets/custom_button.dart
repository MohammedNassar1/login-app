import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.namePage,
    required this.nameButton,
    this.horizontal,
    this.color,
    this.textColor,
  });
  final String namePage;
  final String nameButton;
  final double? horizontal;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, namePage);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color ?? Color(0xff6F35A5)),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: horizontal ?? 130, vertical: 15),
        ),
      ),
      child: Text(
        nameButton,
        style: TextStyle(color: textColor ?? Colors.white),
      ),
    );
  }
}
