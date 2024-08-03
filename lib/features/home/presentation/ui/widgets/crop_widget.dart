import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';

class CropWidget extends StatelessWidget {
  final String crop;

  const CropWidget({super.key, required this.crop});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: (){
        AppNavigator.of(context).push(const CropRequirement());
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                crop,
                style: AppStyles.bodyTextStyle.copyWith(
                    fontSize: 14,
                    color: AppColors.neutral500,
                    fontWeight: FontWeight.w400),
              ),
              const Icon(
                Icons.keyboard_arrow_right_sharp,
                size: 25,
                color: AppColors.neutral500,
              ),
            ],
          ),
          ColSpacing(8),
          Divider(
            height: 0,
            color: AppColors.neutral500,
          ),
        ],
      ),
    );
  }
}
