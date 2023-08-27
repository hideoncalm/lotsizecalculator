import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotsizecalculator/core/common/widgets/fading_text.dart';
import 'package:lotsizecalculator/core/common/widgets/white_space.dart';
import 'package:lotsizecalculator/core/resource/image_resource.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageResource.todo),
          const WhiteSpace(height: 100),
          Text(
            'ToDo with QuyenLe',
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          const WhiteSpace(height: 10),
          const FadingText(
              'Welcome!! Do you want to clear tasks super fast with ToDo?',
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
