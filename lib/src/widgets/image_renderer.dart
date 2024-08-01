import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/extensions/string.dart';
import 'package:flutter_svg/svg.dart';

class ImageRenderer extends StatelessWidget {
  final String imagePath;
  late final double? width;

  ImageRenderer({super.key, required this.imagePath, this.width}) {
    width ??= 40;
  }

  @override
  Widget build(BuildContext context) {
    final isSvg = imagePath.isSvg;
    return isSvg
        ? SvgPicture.asset(
            imagePath,
            width: width,
          )
        : Image.asset(
            imagePath,
            width: width,
          );
  }
}
