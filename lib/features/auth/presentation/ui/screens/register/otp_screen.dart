import 'package:dewsclim/features/auth/presentation/ui/modals/registration_complete.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

@RoutePage(name: 'otpReg')
class OtpRegScreen extends HookConsumerWidget {
  const OtpRegScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<bool> isValidField = ValueNotifier<bool>(false);
    validateField(String otp) {
      bool isValid = otp.length == 4;
      isValidField.value = isValid;
    }

    verifyOtp(String otp) {
      ///integrate with backend to verify otp when ready
    }

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ColSpacing(64),
            Text(
              'Enter OTP code',
              textAlign: TextAlign.center,
              style: AppStyles.titleTextStyle.copyWith(
                  fontSize: 24,
                  color: context.primary,
                  fontWeight: FontWeight.w500),
            ),
            const ColSpacing(8),
            Text(
              'One Time Password (OTP) has been sent to your phone number, kindly enter the code below',
              style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 14,
                  color: AppColors.neutral400,
                  fontWeight: FontWeight.w500),
            ),
            const ColSpacing(40),
            Align(
              alignment: Alignment.center,
              child: CodeInput(
                length: 4,
                builder: CodeInputBuilders.darkCircle(emptyRadius: 56),
                onFilled: (value) => verifyOtp(value),
                onChanged: (value) => validateField(value),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: FilledButton(
                  onPressed: () {
                    if (isValidField.value) {
                      Loader.show(context);
                      Future.delayed((const Duration(seconds: 2)), () {
                        Loader.hide(context);
                        RegistrationCompleteModal.displayModal(context,
                            fromRegistration: true);
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: AppColors.error,
                          content: Text('OTP must be 4 digits')));
                    }
                  },
                  child: const Text('Continue')),
            ),
            TextButton(
              onPressed: () {
                Loader.show(context);
                Future.delayed((const Duration(seconds: 2)), () {
                  Loader.hide(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Code resent')));
                });
              },
              child: Text(
                'Didn\'t receive code? Resend',
                style: AppStyles.bodyTextStyle.copyWith(
                    fontSize: 14,
                    color: AppColors.neutral500,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
