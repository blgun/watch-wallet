import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/avatar.dart';
import 'package:project_watch_wallet/common_widgets/custom_button.dart';
import 'package:project_watch_wallet/constants/colors.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: thirdColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Avatar(
                    photoUrl: "https://picsum.photos/200/300",
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("CAP Token"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("000 CTK"),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                      text: "?",
                      color: primaryColor,
                      textColor: Colors.white,
                      onPressed: () {},
                      borderRadius: 20,
                      height: 20)
                ],
              ),
              const Text("0000원"),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                  text: "보내기",
                  color: primaryColor,
                  textColor: Colors.white,
                  onPressed: onPress,
                  borderRadius: 20,
                  height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
