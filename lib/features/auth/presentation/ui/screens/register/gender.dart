import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

@RoutePage(name: 'genderReg')
class GenderRegScreen extends HookConsumerWidget {
  const GenderRegScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedGender = useState<String>('Male');
    final genders = ['Male', 'Female'];
    return Scaffold(
      appBar: AppBar(),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 42),
        child: SizedBox(
          width: double.maxFinite,
          height: 50,
          child: FilledButton(
              onPressed: () {
                AppNavigator.of(context).push(const AgeReg());
              },
              child: const Text('Continue')),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const ColSpacing(100),
            Align(
              alignment: Alignment.center,
              child: Text(
                'What is your gender?',
                textAlign: TextAlign.center,
                style: AppStyles.bodyTextStyle.copyWith(
                    fontSize: 24,
                    color: context.primary,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const ColSpacing(80),
            ...List.generate(genders.length, (index) {
              bool isSelected = selectedGender.value == genders[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: RadioListTile.adaptive(
                  title: Text(
                    'I am ${genders[index]}',
                    style: AppStyles.bodyTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        color:
                            isSelected ? AppColors.baseWhite : context.primary),
                  ),
                  activeColor: AppColors.baseWhite,
                  fillColor: MaterialStateProperty.all(
                      isSelected ? AppColors.baseWhite : context.primary),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: context.primary)),
                  tileColor: selectedGender.value == genders[index]
                      ? context.primary
                      : null,
                  value: genders[index],
                  groupValue: selectedGender.value,
                  onChanged: (value) {
                    selectedGender.value = value!;
                  },
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
