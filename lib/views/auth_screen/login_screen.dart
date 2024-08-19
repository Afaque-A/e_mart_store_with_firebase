import 'package:e_mart_store_with_firebase/const/constant.dart';
import 'package:e_mart_store_with_firebase/strings.dart';
import 'package:e_mart_store_with_firebase/style.dart';
import 'package:e_mart_store_with_firebase/widgets_common/applogo_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/bg_widget.dart';
import 'package:e_mart_store_with_firebase/widgets_common/custom_textfield.dart';
import 'package:e_mart_store_with_firebase/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgColor(
        child: Scaffold(
            body: Center(
      child: Column(children: [
        (context.screenHeight * 0.1).heightBox,
        applogoWidget(),
        "Log in to $appname".text.fontFamily(semibold).white.size(18).make(),
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
            ourButton().box.width(context.screenWidth - 50).make()
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
