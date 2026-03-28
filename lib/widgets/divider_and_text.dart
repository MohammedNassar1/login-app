import 'package:flutter/material.dart';

class DividerAndText extends StatelessWidget {
  const DividerAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 30,
            color: Colors.purple[700],
            indent: 40,
            endIndent: 2,
            thickness: 0.3,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(
            color: Colors.purple[800],
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Divider(
            height: 30,
            color: Colors.purple[700],
            indent: 2,
            endIndent: 40,
            thickness: 0.3,
          ),
        ),
      ],
    );
  }
}
