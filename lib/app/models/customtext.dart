import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int fontS;
  final Color color;
  final bool bold;

  CustomText(this.color, this.fontS, this.text, this.bold);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.roboto(
          fontSize: fontS.toDouble(),
          color: color,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: false,
    );
  }
}
