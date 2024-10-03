import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/style.dart';

Widget homeButton(
  double height,
  double width,
  onpress,
  String? title,
  icon,
) {
  return Column(
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.size(width, height).make();
}
