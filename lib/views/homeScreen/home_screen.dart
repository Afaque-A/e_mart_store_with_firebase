import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/controllars/home_controllar.dart';
import 'package:e_mart_store_with_firebase/strings.dart';
import 'package:e_mart_store_with_firebase/style.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controllar = Get.put(HomeControllar());
    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: category),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = [
      Container(
        color: Colors.amber,
      ),
      Container(color: Colors.blue),
      Container(color: Colors.purple),
      Container(color: Colors.cyan)
    ];
    return Scaffold(
        body: Column(
          children: [
            Obx(
              () => Expanded(
                  child: navBody.elementAt(controllar.currentNevIndex.value)),
            ),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              currentIndex: controllar.currentNevIndex.value,
              selectedItemColor: redColor,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              backgroundColor: whiteColor,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                controllar.currentNevIndex.value = value;
              },
              items: navBarItem),
        ));
  }
}
