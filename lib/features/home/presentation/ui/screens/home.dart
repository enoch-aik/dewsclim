import 'package:dewsclim/features/home/data/models/info_tile.dart';
import 'package:dewsclim/features/home/presentation/ui/widgets/choose_location.dart';
import 'package:dewsclim/features/home/presentation/ui/widgets/crop_requirement.dart';
import 'package:dewsclim/features/home/presentation/ui/widgets/drawer.dart';
import 'package:dewsclim/features/home/presentation/ui/widgets/info_tile.dart';
import 'package:dewsclim/features/home/presentation/ui/widgets/summary.dart';
import 'package:dewsclim/features/home/providers.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/app_constants/ngn_states.dart';
import 'package:dewsclim/src/extensions/string.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'home')
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    List<InfoTileModel> infoTiles = [
      InfoTileModel(
        title: 'Rainfall pattern',
        unit: 'mm',
        iconPath: rainfallPatternSvg,
        bgPath: rainfallPatternImg,
        value: '1700',
      ),
      InfoTileModel(
        title: 'Temperature',
        unit: '°C',
        bgPath: temperatureImg,
        iconPath: temperatureSvg,
        value: '23',
      ),
      InfoTileModel(
        title: 'Crop Yield',
        unit: 'Tonnes',
        bgPath: cropYieldImg,
        iconPath: cropYieldSvg,
        value: '10',
      ),
      InfoTileModel(
        title: 'Soil Temperature',
        unit: '°C',
        bgPath: soilTemperatureImg,
        iconPath: soilTemperatureSvg,
        value: '21',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(avatarImg),
            const RowSpacing(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ''.greetUser,
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 14,
                      color: const Color(0xff3C2003),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Username',
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 12,
                      color: const Color(0xff3C2003),
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
      endDrawer: const HomeDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            ColSpacing(24),
            ChooseLocation(),
            ColSpacing(24),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 13,
              crossAxisSpacing: 13,
              children: [...infoTiles.map((e) => InfoTile(infoTileModel: e))],
            ),
            ColSpacing(16),
            SummaryWidget(
                summaryText:
                    allStates.firstWhere((e)=>e.name == ref.watch(selectedLocation)).description),
            ColSpacing(16),
            CropRequirementWidget(),
            ColSpacing(40),
          ],
        ),
      ),
    );
  }
}
