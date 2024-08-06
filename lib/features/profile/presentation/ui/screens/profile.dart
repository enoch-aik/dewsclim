import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/loader/loader.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:dewsclim/src/widgets/textfield/custom_formfield.dart';

@RoutePage(name: 'profile')
class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fullName = useTextEditingController();
    final phoneNumber = useTextEditingController();
    final age = useTextEditingController();
    final primaryOccupation = useTextEditingController();
    final offFarmActivities = useTextEditingController();
    final isEdit = useState<bool>(false);
    return Scaffold(
      bottomSheet: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: FilledButton(
          onPressed: () {
            Loader.show(context);
            Future.delayed(const Duration(seconds: 2), () {
              Loader.hide(context);
              if(isEdit.value){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profile updated successfully'),
                  ),
                );
              }



              isEdit.value = !isEdit.value;
            });
          },
          child: Text(isEdit.value ? 'Update profile' : 'Edit my profile'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ColSpacing(40),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    avatarHdImg,
                    width: 110,
                    fit: BoxFit.fitWidth,
                  ),
                  const ColSpacing(8),
                  Text(
                    'Change photo',
                    style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 14,
                      color: AppColors.neutral800,
                    ),
                  ),
                ],
              ),
            ),
            const ColSpacing(40),
            CustomFormField(
              label: 'Full name',
              textField: TextFormField(
                readOnly: !isEdit.value,
                controller: fullName,
                decoration: const InputDecoration(
                  hintText: 'John Doe',
                ),
              ),
              bottomPadding: 16,
            ),
            CustomFormField(
              label: 'Phone number',
              textField: TextFormField(
                readOnly: !isEdit.value,
                controller: phoneNumber,
                decoration: const InputDecoration(
                  hintText: '+234 123 456 7890',
                ),
              ),
              bottomPadding: 16,
            ),
            CustomFormField(
              label: 'Age (Years)',
              textField: TextFormField(
                readOnly: !isEdit.value,
                controller: age,
                decoration: const InputDecoration(
                  hintText: '40 years',
                ),
              ),
              bottomPadding: 16,
            ),
            CustomFormField(
              label: 'Primary occupation',
              textField: TextFormField(
                readOnly: !isEdit.value,
                controller: primaryOccupation,
                decoration: const InputDecoration(
                  hintText: 'Maize farming',
                ),
              ),
              bottomPadding: 16,
            ),
            CustomFormField(
              label: 'Off farm activities',
              textField: TextFormField(
                readOnly: !isEdit.value,
                controller: offFarmActivities,
                decoration: const InputDecoration(
                  hintText: 'Trader',
                ),
              ),
              bottomPadding: 16,
            ),
          ],
        ),
      ),
    );
  }
}
