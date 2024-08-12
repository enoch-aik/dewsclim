import 'package:dewsclim/core/service_exceptions/src/api_exceptions.dart';
import 'package:dewsclim/features/home/providers.dart';
import 'package:dewsclim/features/yield/data/models/yield_res_model.dart';
import 'package:dewsclim/features/yield/domain/params/yield_calculator_params.dart';
import 'package:dewsclim/features/yield/providers.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
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
    List<String> cropTypes = [
      'Mono',
      'Inter',
    ];
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
    List<String> soilTypes = [
      'Clay',
      'Loam',
      'Sand',
      'Silt',
    ];
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
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    Loader.show(context);
                    final YieldCalculatorParams params = YieldCalculatorParams(
                        //cropType: cropType.value!.toLowerCase(),
                        fieldSize: fieldSizes.indexOf(fieldSize.value!) + 1,
                        soilType: soilType.value!.toLowerCase(),
                        seedVariety: seedVariety.value!,
                        fertilizer: fertilizerUsed.value!.toLowerCase(),
                        pesticide:
                            pesticideAndHerbicideUsed.value!.toLowerCase(),
                        isIrrigated: irrigatedOrRainFedOptions
                                .indexOf(irrigatedOrRainFed.value!) ==
                            0,
                        croppingType: monoOrInterCropped.value!
                            .split(' ')
                            .first
                            .toLowerCase(),
                        state: ref
                            .watch(selectedLocation)
                            .split(' ')
                            .first
                            .toLowerCase(),
                        year: int.parse(ref.watch(selectedYear)));

                    final yieldRepo = ref.read(yieldRepoProvider);
                    final result = await yieldRepo.getYieldEstimate(params);

                    if (context.mounted) {
                      Loader.hide(context);
                    }
                    result.when(success: (data) {

                      YieldResModel yieldResModel = YieldResModel(yieldEstimate: 1, explanation: 'Tried to get yield esitmate', recommendations: ['Try again','lETS SEE THIS TIME'], );

                      AppNavigator.of(context)
                          .push(YieldCalculatorResult(calculatedYield: data));
                    }, apiFailure: (e, _) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(e.message),
                          backgroundColor: AppColors.error));
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
