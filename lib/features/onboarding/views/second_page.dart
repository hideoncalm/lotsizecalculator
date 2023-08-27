import 'package:flutter/material.dart';
import 'package:lotsizecalculator/core/common/widgets/round_button.dart';
import 'package:lotsizecalculator/core/common/widgets/white_space.dart';
import 'package:lotsizecalculator/core/resource/image_resource.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageResource.todo),
          const WhiteSpace(height: 100),
          RoundButton(
            'Login with phone',
            onButtonPressed: () {},
          )
        ],
      ),
    );
  }
}
