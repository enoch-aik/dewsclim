import 'package:dewsclim/features/home/providers.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

class ChooseYear extends HookConsumerWidget {
  const ChooseYear({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> years =
        List.generate(15, (index) => (DateTime.now().year + index).toString());
    final yearSelected = useState(ref.read(selectedYear.notifier).state);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 0,
              children: [
                ...years.map(
                  (year) => InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {
                      yearSelected.value = year;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      decoration: BoxDecoration(
                        color: yearSelected.value == year
                            ? AppColors.primary
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: Text(
                          year,
                          style: AppStyles.bodyTextStyle.copyWith(
                              fontSize: 16,
                              color: yearSelected.value == year
                                  ? AppColors.baseWhite
                                  : AppColors.neutral600,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ColSpacing(16),
            FilledButton(
                onPressed: () {
                  ref.read(selectedYear.notifier).state =
                      yearSelected.value.toString();

                  AppNavigator.of(context).pop();
                },
                child: const Text('Select Year'))
          ],
        ),
      ),
    );
  }
}
