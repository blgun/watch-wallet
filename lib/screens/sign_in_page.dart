import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/custom_button.dart';
import 'package:project_watch_wallet/constants/colors.dart';
import 'package:project_watch_wallet/screens/login_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: Padding(
        padding: const EdgeInsets.all(85.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "안녕하세요 \n Watch 지갑 입니다.",
                textAlign: TextAlign.center,
                style: TextStyle(color: primaryColor, fontSize: 20),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Watch 지갑 이용을 위해 로그인이 필요해요.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  CustomButton(
                      text: "로그인 하기",
                      color: primaryColor,
                      textColor: Colors.white,
                      height: 34,
                      onPressed: () {
                        _signInNavigator(context);
                      },
                      borderRadius: 20),
                ],
              ),
              const Opacity(
                opacity: 0.0,
                child: Text("로그인 하기"),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
          height: 60,
          decoration: BoxDecoration(color: secondaryColor),
          child: Center(
            child: Text(
              "메뉴",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
          )),
    );
  }

  Future<void> _signInNavigator(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const LoginPage(),
      ),
    );
  }
}
