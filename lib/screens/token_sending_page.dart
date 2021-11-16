import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/avatar.dart';
import 'package:project_watch_wallet/common_widgets/custom_button.dart';
import 'package:project_watch_wallet/constants/colors.dart';
import 'package:project_watch_wallet/screens/token_sending_action_page.dart';

enum SingingCharacter { lafayette, jefferson }

class TokenSendingPage extends StatefulWidget {
  const TokenSendingPage({Key? key}) : super(key: key);

  @override
  _TokenSendingPageState createState() => _TokenSendingPageState();
}

class _TokenSendingPageState extends State<TokenSendingPage> {
  bool _customTileExpanded = false;
  String dropdownValue = 'One';
  SingingCharacter? _character = SingingCharacter.lafayette;
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
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => TokenSendingActionPage(),
            ),
          );
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: ExpansionTile(
                leading: const Avatar(
                  photoUrl: "https://picsum.photos/200/300",
                  radius: 20,
                ),
                backgroundColor: secondaryColor,
                collapsedBackgroundColor: secondaryColor,
                onExpansionChanged: (bool expanded) {
                  setState(() => _customTileExpanded = expanded);
                },
                trailing: Icon(
                  _customTileExpanded
                      ? Icons.arrow_drop_up_outlined
                      : Icons.arrow_drop_down_outlined,
                  color: fourthColor,
                  size: 50.0,
                ),
                title: Text(
                  '이더리움',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                subtitle: Text(
                  '전송 가능 수량:0000',
                  style: TextStyle(color: primaryColor, fontSize: 14),
                ),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: secondaryColor,
                        )),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            '이더리움',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          tileColor: Colors.red,
                          trailing: Radio<SingingCharacter>(
                            value: SingingCharacter.lafayette,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        Divider(color: secondaryColor, thickness: 1),
                        ListTile(
                          title: Text(
                            'CAP TOKEN',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          trailing: Radio<SingingCharacter>(
                            value: SingingCharacter.jefferson,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "0000",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "0000000원",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        text: "초기화",
                        color: primaryColor,
                        textColor: Colors.white,
                        onPressed: () {},
                        borderRadius: 20,
                        height: 40),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomButton(
                        text: "최대 입력",
                        color: primaryColor,
                        textColor: Colors.white,
                        onPressed: () {},
                        borderRadius: 20,
                        height: 40)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
