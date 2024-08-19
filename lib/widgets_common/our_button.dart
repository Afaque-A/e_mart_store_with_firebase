import 'package:e_mart_store_with_firebase/const/constant.dart';

import 'package:e_mart_store_with_firebase/style.dart';

Widget ourButton({onpress, color, textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        // Set the primary color here
        padding: const EdgeInsets.all(12),
      ),
      onPressed: onpress,
      child: title!.text.color(textColor).fontFamily(regular).size(17).make());
}
