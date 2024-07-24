import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const DrawerOption({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: AppStyles.bodyTextStyle.copyWith(
            fontSize: 14,
            color:
                title == 'Logout' ? AppColors.error300 : AppColors.neutral900),
      ),
      trailing: title != 'Logout'
          ? const Icon(Icons.keyboard_arrow_right_rounded)
          : null,
      onTap: onTap,
    );
  }
}
