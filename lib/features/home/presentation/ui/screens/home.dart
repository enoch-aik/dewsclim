import 'package:dewsclim/features/home/presentation/ui/widgets/choose_location.dart';
import 'package:dewsclim/features/home/presentation/ui/widgets/drawer.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'home')
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(avatarImg),
            const RowSpacing(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning, ☀️',
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 14,
                      color: const Color(0xff3C2003),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Username',
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 12,
                      color: const Color(0xff3C2003),
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
      endDrawer: const HomeDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child:
        Column(children: [
          ColSpacing(24),
          ChooseLocation()

        ],),),
    );
  }
}
