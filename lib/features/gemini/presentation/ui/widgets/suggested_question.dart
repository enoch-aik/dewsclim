import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuggestedQuestion extends StatelessWidget {
  final void Function() onTap;
  final String title;

  const SuggestedQuestion(
      {super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: AppColors.primary100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text(title,
          style: AppStyles.bodyTextStyle
              .copyWith(color: AppColors.primary800, fontSize: 14)),
      leading: SvgPicture.asset(
        questionOutlinedSvg,
        color: AppColors.primary400,
        width: 28,
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right_outlined,
        color: Color(0xff222222),
      ),
    );
  }
}
