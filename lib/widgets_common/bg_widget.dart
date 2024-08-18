import 'package:e_mart_store_with_firebase/const/constant.dart';

Widget bgColor({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgBackground), fit: BoxFit.contain)),
    child: child,
  );
}
