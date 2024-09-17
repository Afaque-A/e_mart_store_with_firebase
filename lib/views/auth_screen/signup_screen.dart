import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/strings.dart';
import 'package:e_mart_store_with_firebase/style.dart';

import 'package:e_mart_store_with_firebase/widgets_common/applogo_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/bg_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/custom_textfield.dart';
import 'package:e_mart_store_with_firebase/widgets_common/our_button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgColor(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
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
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
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
                          color: isCheck == true ? redColor : lightGrey,
                          textColor: whiteColor,
                          onpress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyHaveAccount.text.make(),
                      and.text.size(15).fontFamily(regular).make(),
                      login.text
                          .color(redColor)
                          .fontFamily(semibold)
                          .make()
                          .onTap(() {
                        Get.back();
                      })
                    ],
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
