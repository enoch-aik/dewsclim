import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final Widget textField;
  final double? labelFontSize;
  final double? bottomPadding;
  final Color? labelColor;

  const CustomFormField(
      {super.key,
      required this.label,
      required this.textField,
      this.labelFontSize,
      this.bottomPadding,
      this.labelColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.bodyTextStyle.copyWith(
              fontSize: labelFontSize,
              color: labelColor ?? AppColors.neutral800,
              fontWeight: FontWeight.w400),
        ),
        const ColSpacing(8),
        textField,
        ColSpacing(bottomPadding ?? 24),
      ],
    );
  }
}
