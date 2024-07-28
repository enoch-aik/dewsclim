import 'package:dewsclim/features/app_shell/providers.dart';
import 'package:dewsclim/features/gemini/presentation/ui/screens/gemini.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/home.dart';
import 'package:dewsclim/features/profile/presentation/ui/screens/profile.dart';
import 'package:dewsclim/features/search/presentation/ui/screens/search.dart';
import 'package:dewsclim/features/yield/presentation/ui/screens/yield.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/app_constants/bottom_nav.dart';

@RoutePage(name: 'appShell')
class AppShellScreen extends ConsumerStatefulWidget {
  const AppShellScreen({super.key});

  @override
  ConsumerState<AppShellScreen> createState() => _AppShellState();
}

class _AppShellState extends ConsumerState<AppShellScreen> {
  List<Widget> bottomNavBody = [
    const HomeScreen(),
    const SearchScreen(),
    const GeminiScreen(),
    const YieldScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: ref.watch(selectedHomeIndex),
          items: appNavItems,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            ref.read(selectedHomeIndex.notifier).state = index;
          },
        ),
      ),
      body: bottomNavBody[ref.watch(selectedHomeIndex)],
    );
  }
}
