import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/const/list_of_icons.dart';
import 'package:e_mart_store_with_firebase/strings.dart';
import 'package:e_mart_store_with_firebase/style.dart';
import 'package:e_mart_store_with_firebase/views/auth_screen/signup_screen.dart';
import 'package:e_mart_store_with_firebase/views/homeScreen/home_screen.dart';
import 'package:e_mart_store_with_firebase/widgets_common/applogo_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/bg_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/custom_textfield.dart';
import 'package:e_mart_store_with_firebase/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgColor(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: Column(children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              "Log in to $appname"
                  .text
                  .fontFamily(semibold)
                  .white
                  .size(18)
                  .make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetpass.text.make())),
                  5.heightBox,
                  ourButton(
                      title: login,
                      color: redColor,
                      textColor: whiteColor,
                      onpress: () {
                        Get.to(() => const HomeScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  10.heightBox,
                  ourButton(
                          title: signUp,
                          color: redColor,
                          onpress: () {
                            Get.to(() => const SignupScreen());
                          },
                          textColor: whiteColor)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(12),
                              child: CircleAvatar(
                                 backgroundColor: lightGrey,
                                radius: 25,
                                child: Image.asset(
                                  socialIconsLogo[index],
                                  width: 37,
                                ),
                              ),
                            )),
                  )
                ],
              )
                  .box
                  .rounded
                  .white
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth)
                  .make()
            ]).paddingAll(15))));
  }
}
