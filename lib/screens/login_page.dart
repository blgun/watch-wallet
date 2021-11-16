import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/custom_button.dart';
import 'package:project_watch_wallet/constants/colors.dart';
import 'package:project_watch_wallet/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
            Text(
              '로그인',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: primaryColor),
            ),
            const SizedBox(height: 30),
            TextField(
              style: TextStyle(fontSize: 14, color: secondaryColor),
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: '이메일 주소를 입력하세요',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              style: TextStyle(fontSize: 14, color: secondaryColor),
              decoration: const InputDecoration(
                labelText: '비밀번호를 입력하세요',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: "로그인",
              color: primaryColor,
              textColor: Colors.white,
              onPressed: () {
                _loginInNavigator(context);
              },
              borderRadius: 10,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _loginInNavigator(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
