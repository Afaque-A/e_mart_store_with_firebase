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
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        height: 150,
                        autoPlay: true,
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
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            2,
                            (index) => homeButton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 2.20,
                                title: index == 0 ? todaydeal : flashsale,
                                icon:
                                    index == 0 ? icTodaysDeal : icFlashDeal))),
                    15.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        height: 150,
                        autoPlay: true,
                        itemCount: secondSliderlist.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(
                              secondSliderlist[index],
                              fit: BoxFit.fill,
                            ),
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            3,
                            (index) => homeButton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 3.5,
                                title: index == 0
                                    ? topcategories
                                    : index == 1
                                        ? brands
                                        : topseller,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller))),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredcategoris.text
                            .size(20)
                            .fontFamily(semibold)
                            .color(redColor)
                            .make()),
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
