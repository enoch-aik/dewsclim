import 'package:dewsclim/features/home/presentation/ui/widgets/crop_widget.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';

class CropRequirementWidget extends StatelessWidget {
  //should take in a model that gives details on the crop requirement
  const CropRequirementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> crops = ['Maize', 'Cowpea', 'Groundnuts', 'Cocoa', 'Cassava'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Crop Requirement',
          style: AppStyles.bodyTextStyle.copyWith(
              fontSize: 16,
              color: AppColors.neutral900,
              fontWeight: FontWeight.w500),
        ),
        const ColSpacing(16),
        ...crops.map(
          (e) => Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: CropWidget(crop: e),
          ),
        ),
      ],
    );
  }
}
