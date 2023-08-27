import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lotsizecalculator/core/common/widgets/fading_text.dart';
import 'package:lotsizecalculator/core/common/widgets/white_space.dart';
import 'package:lotsizecalculator/features/onboarding/views/first_page.dart';
import 'package:lotsizecalculator/features/onboarding/views/second_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageControler = PageController();

  @override
  void dispose() {
    pageControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
              controller: pageControler,
              children: const [
                FirstPage(),
                SecondPage(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20)
                  .copyWith(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      pageControler.nextPage(
                        duration: const Duration(microseconds: 300),
                        curve: Curves.bounceInOut,
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(
                          color: Colors.black,
                          size: 30,
                          Ionicons.chevron_forward_circle,
                        ),

                        WhiteSpace(width: 5),
                        // skip
                        FadingText(
                          'Skip',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  // swipe indicator
                  SmoothPageIndicator(
                    controller: pageControler,
                    count: 2,
                    effect: const WormEffect(
                      // dotHeight: 12,
                      spacing: 10,
                      // dotColor: Colors.black,
                      activeDotColor: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
