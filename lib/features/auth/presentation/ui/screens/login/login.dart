import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/loader/loader.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:dewsclim/src/widgets/textfield/custom_formfield.dart';

export 'login_otp_screen.dart';

@RoutePage(name: 'login')
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumber = useTextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ColSpacing(64),
            Text(
              'Welcome Back 👋',
              style: AppStyles.titleTextStyle.copyWith(
                fontSize: 24,
                color: context.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            const ColSpacing(4),
            Text(
              'Sign in to your account with your phone number to continue',
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 14,
                color: AppColors.neutral400,
                fontWeight: FontWeight.w500,
              ),
            ),
            const ColSpacing(40),
            CustomFormField(
              label: 'Phone number',
              textField: TextFormField(
                controller: phoneNumber,
                decoration: const InputDecoration(
                  hintText: 'Enter your phone number',
                ),
              ),
            ),
            const ColSpacing(24),
            FilledButton(
              onPressed: () {
                Loader.show(context);
                Future.delayed((const Duration(seconds: 2)), () {
                  Loader.hide(context);
                  AppNavigator.of(context).push(const LoginOtp());
                });
              },
              child: const Text('Continue'),
            ),
            const ColSpacing(40),
            Center(
              child: TextButton(
                onPressed: () {
                  AppNavigator.of(context)
                      .push(const ChoosePreferredLanguage());
                },
                child: Text(
                  'Don\'t have an account? Register',
                  style: AppStyles.bodyTextStyle.copyWith(
                    color: AppColors.neutral500,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
