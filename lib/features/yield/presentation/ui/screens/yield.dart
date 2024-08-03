import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/loader/loader.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:dewsclim/src/widgets/textfield/custom_formfield.dart';
import 'package:dewsclim/src/widgets/textfield/date_textfield.dart';

@RoutePage(name: 'yield')
class YieldScreen extends HookConsumerWidget {
  const YieldScreen({super.key});

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cropType = useState<String?>(null);
    final fieldSize = useState<String?>(null);
    final soilType = useState<String?>(null);
    final seedVariety = useState<String?>(null);
    final fertilizerUsed = useState<String?>(null);
    final pesticideAndHerbicideUsed = useState<String?>(null);
    final irrigatedOrRainFed = useState<String?>(null);
    final monoOrInterCropped = useState<String?>(null);
    final plantingDate = useTextEditingController();
    List<String> cropTypes = ['Legumes', 'Cereals', 'Roots', 'Fruits'];
    List<String> fieldSizes = [
      '1 hectare',
      '2 hectares',
      '3 hectares',
      '4 hectares',
      '5 hectares',
      '6 hectares',
      '7 hectares'
    ];
    List<String> seedVarieties = [
      'Certified seed',
      'Farm saved seed',
      'Hybrid seed',
      'Open pollinated seed'
    ];
    List<String> soilTypes = ['Sandy', 'Loamy', 'Clayey', 'Peaty', 'Silty'];
    List<String> fertilizerOptions = ['Yes', 'No'];
    List<String> pesticideAndHerbicideOptions = ['Yes', 'No'];
    List<String> irrigatedOrRainFedOptions = ['Irrigated', 'Rain-fed'];
    List<String> monoOrInterCroppedOptions = [
      'Mono cropping',
      'Inter cropping'
    ];

    String? dropdownValidator(value) {
      if (value == null) {
        return 'Select an option to continue';
      }
      return null;
    }

    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Yield Calculator',
            style: AppStyles.bodyTextStyle.copyWith(color: AppColors.baseBlack),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const ColSpacing(16),
              CustomFormField(
                label: 'Crop type',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select crop planted',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: cropType.value,
                  onChanged: (value) {
                    cropType.value = value!;
                  },
                  validator: dropdownValidator,
                  items: cropTypes.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: AppStyles.bodyTextStyle.copyWith(fontSize: 14),
                        ),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 16,
              ),
              CustomFormField(
                  label: 'Planting date',
                  bottomPadding: 16,
                  textField: DateTextField(
                      date: plantingDate, hintText: 'DD/MM/YYYY')),
              CustomFormField(
                label: 'Field size (hectares)',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select field size',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: fieldSize.value,
                  onChanged: (value) {
                    fieldSize.value = value!;
                  },
                  validator: dropdownValidator,
                  items: fieldSizes.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style:
                                AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 16,
              ),
              CustomFormField(
                label: 'Soil type',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select soil type',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: soilType.value,
                  onChanged: (value) {
                    soilType.value = value!;
                  },
                  validator: dropdownValidator,
                  items: soilTypes.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style:
                                AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 16,
              ),
              CustomFormField(
                label: 'Seed variety',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select seed variety',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: seedVariety.value,
                  onChanged: (value) {
                    seedVariety.value = value!;
                  },
                  validator: dropdownValidator,
                  items: seedVarieties.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style:
                                AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 16,
              ),
              CustomFormField(
                label: 'Fertilizer used',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: fertilizerUsed.value,
                  onChanged: (value) {
                    fertilizerUsed.value = value!;
                  },
                  validator: dropdownValidator,
                  items: fertilizerOptions.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style:
                                AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 16,
              ),
              CustomFormField(
                label: 'Pesticide/Herbicide use',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: pesticideAndHerbicideUsed.value,
                  onChanged: (value) {
                    pesticideAndHerbicideUsed.value = value!;
                  },
                  validator: dropdownValidator,
                  items: pesticideAndHerbicideOptions.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style:
                                AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 16,
              ),
              CustomFormField(
                label: 'Irrigated or Rain-fed',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: irrigatedOrRainFed.value,
                  onChanged: (value) {
                    irrigatedOrRainFed.value = value!;
                  },
                  validator: dropdownValidator,
                  items: irrigatedOrRainFedOptions.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style:
                                AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 16,
              ),
              CustomFormField(
                label: 'Mono cropping/Inter cropping',
                textField: DropdownButtonFormField<String>(
                  hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Select',
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral300))),
                  isExpanded: true,
                  isDense: true,
                  value: monoOrInterCropped.value,
                  onChanged: (value) {
                    monoOrInterCropped.value = value!;
                  },
                  validator: dropdownValidator,
                  items: monoOrInterCroppedOptions.map(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style:
                                AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                      );
                    },
                  ).toList(),
                ),
                bottomPadding: 80,
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    Loader.show(context);
                    Future.delayed(const Duration(seconds: 2), () {
                      Loader.hide(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Calculation done')));
                    });
                  }
                },
                child: const Text('Calculate Now'),
              ),
              const ColSpacing(80)
            ],
          ),
        ),
      ),
    );
  }
}
