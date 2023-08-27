import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhiteSpace extends StatelessWidget {
  final double? height;
  final double? width;
  const WhiteSpace({this.width, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height?.h, width: width?.h);
  }
}
