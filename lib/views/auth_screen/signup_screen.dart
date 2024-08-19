import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/const/list_of_icons.dart';
import 'package:e_mart_store_with_firebase/strings.dart';
import 'package:e_mart_store_with_firebase/style.dart';
import 'package:e_mart_store_with_firebase/views/auth_screen/login_screen.dart';
import 'package:e_mart_store_with_firebase/widgets_common/applogo_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/bg_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/custom_textfield.dart';
import 'package:e_mart_store_with_firebase/widgets_common/our_button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgColor(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Column(children: [
                (context.screenHeight * 0.1).heightBox,
                applogoWidget(),
                "Join the  $appname"
                    .text
                    .fontFamily(semibold)
                    .white
                    .size(18)
                    .make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: nameHint, title: name),
                    customTextField(hint: emailHint, title: email),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {}, child: forgetpass.text.make())),
                    customTextField(hint: passwordHint, title: password),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {}, child: forgetpass.text.make())),
                    customTextField(hint: passwordHint, title: reTypePassword),
                    5.heightBox,
                    Row(
                      children: [
                        Checkbox(
                          checkColor: redColor,
                          value: false,
                          onChanged: (newValue) {},
                        ),
                        10.widthBox,
                        Expanded(
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                    fontFamily: semibold, color: fontGrey)),
                            TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                    fontFamily: semibold, color: redColor)),
                            TextSpan(
                                text: " & ",
                                style: TextStyle(
                                    fontFamily: semibold, color: fontGrey)),
                            TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                    fontFamily: semibold, color: redColor))
                          ])),
                        )
                      ],
                    ),
                    5.heightBox,
                    ourButton(
                            title: signUp,
                            color: redColor,
                            textColor: whiteColor,
                            onpress: () {})
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    5.heightBox,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: alreadyHaveAccount,
                          style:
                              TextStyle(fontFamily: semibold, color: fontGrey)),
                      TextSpan(
                          text: "? Login",
                          style:
                              TextStyle(fontFamily: semibold, color: redColor)),
                    ])).onTap(() {
                      Get.back();
                    })
                  ],
                )
                    .box
                    .rounded
                    .white
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth)
                    .make()
              ]),
            )));
  }
}