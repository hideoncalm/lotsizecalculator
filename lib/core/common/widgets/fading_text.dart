import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadingText extends StatelessWidget {
  const FadingText(this.text,
      {this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      super.key});

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.fade,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: 2,
      style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? Colors.black),
    );
  }
}
