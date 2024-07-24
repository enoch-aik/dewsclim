import 'package:dewsclim/features/home/presentation/ui/modals/registration_complete.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/app_constants/ngn_states.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'selectLocation')
class SelectLocationScreen extends HookConsumerWidget {
  const SelectLocationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocation = useState(nigerianStates[0]);
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
      child: Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
                LocationAddedModal.displayModal(context,
                    location: selectedLocation.value);
              },
              child: const Text('Select')),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ColSpacing(40),
              Text(
                'Select your location',
                style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
              const ColSpacing(32),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return RadioListTile<String>(
                        value: nigerianStates[index],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: EdgeInsets.zero,
                        fillColor: WidgetStateProperty.all(AppColors.primary),
                        title: Text(
                          nigerianStates[index],
                          style: AppStyles.bodyTextStyle.copyWith(fontSize: 18),
                        ),
                        groupValue: selectedLocation.value,
                        onChanged: (String? value) {
                          selectedLocation.value = value!;
                        });
                  },
                  separatorBuilder: (context, index) {
                    return const ColSpacing(8);
                  },
                  itemCount: nigerianStates.length),
              const ColSpacing(108),
            ],
          ),
        ),
      ),
    );
  }

  static void displayModal(
    BuildContext context,
  ) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        showDragHandle: false,
        constraints: const BoxConstraints.tightFor(height: 782),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        builder: (context) => const SelectLocationScreen());
  }
}
