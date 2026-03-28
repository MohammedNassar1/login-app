import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.SourceImage});
  final String SourceImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.purple, width: 0.3),
      ),
      child: SvgPicture.asset(
        SourceImage,
        color: Colors.purple[800],
        height: 35,
      ),
    );
  }
}
