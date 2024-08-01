import 'package:dewsclim/features/home/presentation/ui/modals/logout_confirmation.dart';
import 'package:dewsclim/features/home/presentation/ui/widgets/drawer_option.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/extensions/string.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      'Language',
      'About us',
      'Feedback',
      'Contact us',
      'Logout'
    ];

    void onOptionSelected(String option) {
      switch (option) {
        case 'Language':
          AppNavigator.of(context)
              .push(ChoosePreferredLanguage(fromOnboarding: false));
          break;
        case 'About us':
          AppNavigator.of(context).push(const AboutUs());
          break;
        case 'Feedback':
          AppNavigator.of(context).push(UserFeedback());

          break;
        case 'Contact us':
          AppNavigator.of(context).push(const ContactUs());
          break;
        case 'Logout':
          LogoutConfirmation.displayModal(context);

          break;
        default:
          break;
      }
    }

    return Drawer(
      width: double.maxFinite,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 52),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(avatarImg),
                  const RowSpacing(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ''.greetUser,
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
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Scaffold.of(context).closeEndDrawer(),
              ),
            ],
          ),
          const ColSpacing(24),
          ListView.builder(
            shrinkWrap: true,
            itemCount: options.length,
            itemBuilder: (context, index) {
              return DrawerOption(
                title: options[index],
                onTap: () {
                  onOptionSelected(options[index]);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
