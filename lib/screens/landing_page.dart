import 'package:flutter/material.dart';
import 'package:project_watch_wallet/screens/home_page.dart';
import 'package:project_watch_wallet/screens/sign_in_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  final int user = 2;

  @override
  Widget build(BuildContext context) {
    if (user == 1) {
      return const HomePage();
    } else {
      return const SignInPage();
    }
  }
}
