import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

class SummaryWidget extends StatelessWidget {
  final String summaryText;

  const SummaryWidget({super.key, required this.summaryText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Summary',
          style: AppStyles.bodyTextStyle.copyWith(
              fontSize: 16,
              color: AppColors.neutral900,
              fontWeight: FontWeight.w500),
        ),
        const ColSpacing(10),
        Text(
          summaryText,
          textAlign: TextAlign.justify,
          style: AppStyles.bodyTextStyle.copyWith(
              fontSize: 14,
              color: AppColors.neutral700,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
