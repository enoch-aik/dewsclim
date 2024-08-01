import 'package:dewsclim/features/home/data/models/info_tile.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/image_renderer.dart';
import 'package:dewsclim/src/widgets/margin.dart';

class InfoTile extends StatelessWidget {
  final InfoTileModel infoTileModel;

  const InfoTile({super.key, required this.infoTileModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166,
      height: 140,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(infoTileModel.bgPath),
          fit: BoxFit.cover,
        ),
        // color: infoTileModel.bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              ImageRenderer(imagePath: infoTileModel.iconPath, width: 32),
              const RowSpacing(3),
              Text(
                infoTileModel.title,
                style: AppStyles.bodyTextStyle.copyWith(
                    color: AppColors.baseWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              '${infoTileModel.value} ${infoTileModel.unit}',
              style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.baseWhite),
            ),
          )
        ],
      ),
    );
  }
}
