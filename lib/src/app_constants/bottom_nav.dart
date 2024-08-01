import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<BottomNavigationBarItem> appNavItems = [
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(homeSvg),
    label: 'Home',
    icon: SvgPicture.asset(homeOutlinedSvg),
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(searchSvg),
    label: 'Search',
    icon: SvgPicture.asset(searchOutlinedSvg),
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(geminiSvg),
    label: 'Gemini',
    icon: SvgPicture.asset(geminiOutlinedSvg),
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(yieldSvg),
    label: 'Yield',
    icon: SvgPicture.asset(yieldOutlinedSvg),
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(profileSvg),
    label: 'Profile',
    icon: SvgPicture.asset(profileOutlinedSvg),
  ),
];
