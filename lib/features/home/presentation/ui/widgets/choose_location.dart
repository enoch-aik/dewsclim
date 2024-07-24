import 'package:dewsclim/features/home/presentation/ui/screens/select_location.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseLocation extends HookConsumerWidget {
  const ChooseLocation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> years = [
      '2024',
      '2025',
      '2026',
      '2027',
      '2028',
      '2029',
      '2030'
    ];
    final selectedLocation = useState(years[0]);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 250,
          child: TextFormField(
            readOnly: true,
            onTap: () {
              SelectLocationScreen.displayModal(context);
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  locationSvg,
                  color: const Color(0xff222222),
                ),
              ),
              contentPadding: const EdgeInsets.only(left: 8, top: 8),
              hintText: 'Selected location',
              hintStyle: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 18,
                  color: AppColors.neutral300,
                  fontWeight: FontWeight.w400),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          height: 35,
          width: 80,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              dropdownColor: AppColors.primary,
              value: selectedLocation.value,
              padding: const EdgeInsets.only(left: 16),
              style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 14,
                  color: AppColors.baseWhite,
                  fontWeight: FontWeight.w500),
              items: years.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.baseWhite,
              ),
              borderRadius: BorderRadius.circular(8),
              onChanged: (String? value) {
                selectedLocation.value = value!;
              },
            ),
          ),
        ),
      ],
    );
  }
}
