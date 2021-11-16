import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/custom_button.dart';
import 'package:project_watch_wallet/common_widgets/show_alert_dialog.dart';
import 'package:project_watch_wallet/common_widgets/token_cart.dart';
import 'package:project_watch_wallet/constants/colors.dart';

class TokenSendingActionPage extends StatefulWidget {
  TokenSendingActionPage({Key? key}) : super(key: key);

  @override
  _TokenSendingActionPageState createState() => _TokenSendingActionPageState();
}

class _TokenSendingActionPageState extends State<TokenSendingActionPage> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(color: primaryColor),
          title: Text(
            "보내기",
            style: TextStyle(color: primaryColor),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white),
      bottomSheet: InkWell(
        onTap: () async {
          final didRequestSignOut = await showAlertDialog(
            context,
            title: '토큰을 보내기 전 아래 내용을확인해 주세요.',
            content: 'Are you sure that you want to logout?',
            cancelActionText: '취소',
            defaultActionText: '보내기',
          );
          if (didRequestSignOut == true) {
            print("hello");
          }
        },
        child: Container(
            height: 60,
            decoration: BoxDecoration(color: secondaryColor),
            child: Center(
              child: Text(
                "다음 단계",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TokenCart(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "전송 수수료",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: primaryColor, fontSize: 16),
                ),
                Text(
                  "00000 ETH",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: primaryColor, fontSize: 16),
                ),
              ],
            ),
            Slider(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "느림",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: primaryColor, fontSize: 16),
                ),
                Text(
                  "빠름",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: primaryColor, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "받는 사람",
              style: TextStyle(color: primaryColor, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    //decoration: BoxDecoration(color: Colors.white),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: TextField(
                        cursorColor: Colors.black87,
                        autocorrect: false,
                        decoration: InputDecoration(
                            border: InputBorder.none, fillColor: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                      text: "스캔",
                      color: primaryColor,
                      textColor: Colors.white,
                      onPressed: () {},
                      borderRadius: 2,
                      height: 29),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "꼭 확인해 주세요!",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
