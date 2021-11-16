import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/cap_token_cart.dart';
import 'package:project_watch_wallet/common_widgets/custom_button.dart';
import 'package:project_watch_wallet/common_widgets/wallet_card.dart';
import 'package:project_watch_wallet/constants/colors.dart';
import 'package:project_watch_wallet/screens/key_password_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 25.0,
              ),
              Container(
                //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Column(
                  children: <Widget>[
                    Text(
                      "안녕하세요 \n000님",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    CustomButton(
                        text: "내 주소 보기",
                        color: primaryColor,
                        textColor: Colors.white,
                        height: 34,
                        onPressed: () {},
                        borderRadius: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "나의 토큰",
                      style: TextStyle(color: primaryColor, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    WalletCard(
                      onPress: () => _keyPasswordNavigator(context),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    WalletCard(
                      onPress: () => _keyPasswordNavigator(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cap-Token 획득하기",
                      style: TextStyle(color: primaryColor, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CapTokenCard(),
                        CapTokenCard(),
                        CapTokenCard(),
                      ],
                    )
                  ],
                ),
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

  Future<void> _keyPasswordNavigator(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => const KeyPasswordPage(),
      ),
    );
  }
}
