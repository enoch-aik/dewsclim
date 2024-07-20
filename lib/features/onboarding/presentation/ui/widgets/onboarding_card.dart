import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

class OnboardingCardWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  const OnboardingCardWidget(
      {super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        const ColSpacing(30),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.titleTextStyle
              .copyWith(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
