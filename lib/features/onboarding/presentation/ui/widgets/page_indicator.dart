import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorWidget extends StatelessWidget {
  final PageController pageController;

  const PageIndicatorWidget({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16, top: 8),
      child: Center(
        child: SmoothPageIndicator(
            controller: pageController,
            // PageController
            count: 3,
            effect: const ExpandingDotsEffect(
                dotHeight: 8, dotWidth: 8, activeDotColor: AppColors.primary),
            // your preferred effect
            onDotClicked: (index) {}),
      ),
    );
  }
}
