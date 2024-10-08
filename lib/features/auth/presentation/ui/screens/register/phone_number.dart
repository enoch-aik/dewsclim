import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/widgets.dart';
import 'package:flutter/services.dart';

@RoutePage(name: 'phoneNumberReg')
class PhoneNumberRegScreen extends StatelessWidget {
  const PhoneNumberRegScreen({super.key});

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 42),
          child: SizedBox(
            width: double.maxFinite,
            height: 50,
            child: FilledButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    AppNavigator.of(context).push(const OtpReg());
                  }
                },
                child: const Text('Continue')),
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
                  'What is your phone\nnumber?',
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
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  } else if (value.length < 11) {
                    return 'Phone number must be 11 digits';
                  }
                  return null;
                },
                maxLength: 11,
                decoration: InputDecoration(
                  hintText: 'e.g 08103335589',
                  counterText: '',
                  hintStyle: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 20,
                      color: AppColors.neutral500,
                      fontWeight: FontWeight.w500),
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
