import 'package:dewsclim/features/onboarding/presentation/ui/widgets/onboarding_card.dart';
import 'package:dewsclim/features/onboarding/presentation/ui/widgets/page_indicator.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/router/navigator.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'onboarding')
class OnboardingScreen extends HookWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);
    ValueNotifier<int> currentPage = useState(0);
    List<String> titles = [
      'Accurate rainfall pattern and flooding predictions',
      'Real-time soil temperature and condition updated',
      'Ask Gemini AI questions and get expert farming tips'
    ];
    List<String> images = [
      onboarding1,
      onboarding2,
      onboarding3,
    ];

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ColSpacing(100),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 450),
            child: PageView(
              controller: pageController,
              onPageChanged: (page) {
                currentPage.value = page;
              },
              children: List.generate(
                  images.length,
                  (index) => OnboardingCardWidget(
                      imagePath: images[index], title: titles[index])).toList(),
            ),
          ),
          const ColSpacing(120),
          PageIndicatorWidget(pageController: pageController),
          currentPage.value <= 1
              ? FilledButton(
                  onPressed: () {
                    pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                  },
                  child: const Text('Next'),
                )
              : Column(
                  children: [
                    SizedBox(
                        width: double.maxFinite,
                        child: FilledButton(
                            onPressed: () => AppNavigator.of(context)
                                  .push(const ChoosePreferredLanguage()),
                            child: const Text('Register'))),
                    const ColSpacing(8),
                    SizedBox(
                        width: double.maxFinite,
                        child: OutlinedButton(
                            onPressed: () {}, child: const Text('Login'))),
                  ],
                ),
        ],
      ),
    );
  }
}
