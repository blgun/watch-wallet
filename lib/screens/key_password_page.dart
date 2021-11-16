import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:project_watch_wallet/constants/colors.dart';
import 'package:project_watch_wallet/screens/token_sending_page.dart';

class KeyPasswordPage extends StatefulWidget {
  const KeyPasswordPage({Key? key}) : super(key: key);

  @override
  _KeyPasswordPageState createState() => _KeyPasswordPageState();
}

class _KeyPasswordPageState extends State<KeyPasswordPage> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(color: primaryColor),
          title: Text(
            "비밀번호 관리",
            style: TextStyle(color: primaryColor),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text("비밀번호 입력",
                style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 20,
            ),
            Text("비밀번호 6자리를 입력하세요",
                style: TextStyle(
                  fontSize: 18,
                  color: primaryColor,
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
              child: PinCodeTextField(
                appContext: (context),
                length: 6,
                obscureText: true,
                showCursor: false,
                animationType: AnimationType.fade,
                textStyle: const TextStyle(fontSize: 10),
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    //borderRadius: BorderRadius.circular(10),
                    fieldHeight: 20,
                    fieldWidth: 20,
                    activeFillColor: Colors.white,
                    inactiveFillColor: secondaryColor,
                    inactiveColor: secondaryColor,
                    activeColor: secondaryColor),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.white,
                enableActiveFill: true,
                errorAnimationController: errorController,
                controller: textEditingController,
                onCompleted: (v) {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => const TokenSendingPage(),
                    ),
                  );
                },
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                  });
                },
                keyboardType: TextInputType.number,
                beforeTextPaste: (text) {
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
