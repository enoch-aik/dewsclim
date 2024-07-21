import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/navigator.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'fullNameReg')
class FullNameRegScreen extends StatelessWidget {
  const FullNameRegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 42),
          child: SizedBox(
            width: double.maxFinite,
            height: 50,
            child:
                FilledButton(onPressed: () {
                  AppNavigator.of(context).push(const GenderReg());

                }, child: const Text('Continue')),
          ),
        ),
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const ColSpacing(100),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'What is your full name?',
                  textAlign: TextAlign.center,
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 24,
                      color: context.primary,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const ColSpacing(72),
              TextFormField(
                textAlign: TextAlign.center,
                style: AppStyles.bodyTextStyle.copyWith(
                    fontSize: 20,
                    color: AppColors.neutral500,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  hintText: 'e.g Jack Sparrow',
                  hintStyle: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 20,
                      color: AppColors.neutral500,
                      fontWeight: FontWeight.w500),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ],
          ),
        ));
  }
}
