import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/avatar.dart';
import 'package:project_watch_wallet/constants/colors.dart';

class TokenCart extends StatelessWidget {
  const TokenCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: primaryColor,
          )),
      padding: const EdgeInsets.all(20),
      child: Row(
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
            children: [
              Text(
                '이더리움',
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              Text(
                '전송 가능 수량:0000',
                style: TextStyle(color: primaryColor, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
