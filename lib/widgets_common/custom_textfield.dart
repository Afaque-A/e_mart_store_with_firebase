import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/style.dart';

Widget customTextField({String? title, String? hint, controllar}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(18).make(),
      TextFormField(
        controller: controllar,
        decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: hint,
            fillColor: lightGrey,
            filled: true,
            isDense: true,
            border: InputBorder.none,
            focusColor: Colors.black38,
            focusedBorder:
                const OutlineInputBorder(borderSide: BorderSide(color: redColor))),
      ),
      5.heightBox
    ],
  );
}
