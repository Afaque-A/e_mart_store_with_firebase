import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/const/list_of_icons.dart';
import 'package:e_mart_store_with_firebase/strings.dart';
import 'package:e_mart_store_with_firebase/style.dart';
import 'package:e_mart_store_with_firebase/widgets_common/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        color: lightGrey,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: 50,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: whiteColor,
                    filled: true,
                    isDense: true,
                    hintText: searchanything,
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintStyle:
                        TextStyle(fontFamily: semibold, color: textfieldGrey),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: redColor))),
              ),
            ),
            10.heightBox,
            VxSwiper.builder(
                aspectRatio: 16 / 9,
                height: 150,
                autoPlay: true,
                // enlargeCenterPage: true,
                itemCount: sliderlist.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(
                      sliderlist[index],
                      fit: BoxFit.fill,
                    ),
                  )
                      .box
                      .rounded
                      .clip(Clip.antiAlias)
                      .margin(EdgeInsets.symmetric(horizontal: 8))
                      .make();
                }),
            10.heightBox,
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    2,
                    (index) => homeButton(
                        context.screenHeight * 0.2,
                        context.screenWidth / 2.5,
                        () {},
                        todaydeal,
                        icTodaysDeal)))
          ],
        )));
  }
}
