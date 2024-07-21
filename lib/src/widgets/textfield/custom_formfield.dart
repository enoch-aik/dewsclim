import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final Widget textField;
  final double? labelFontSize;
  final double? bottomPadding;

  const CustomFormField({
    super.key,
    required this.label,
    required this.textField,
    this.labelFontSize,
    this.bottomPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.bodyTextStyle.copyWith(fontSize: labelFontSize),
        ),
        const ColSpacing(8),
        textField,
        ColSpacing(bottomPadding ?? 24),
      ],
    );
  }
}
