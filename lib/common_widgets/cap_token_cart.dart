import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/avatar.dart';
import 'package:project_watch_wallet/constants/colors.dart';

class CapTokenCard extends StatelessWidget {
  const CapTokenCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: thirdColor,
      child: Column(
        children: [
          Text(
            "랜덤 박스",
            style: TextStyle(color: primaryColor, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "최대 1 CTK",
            style: TextStyle(color: primaryColor, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          const Avatar(
            photoUrl: "https://picsum.photos/200/300",
            radius: 20,
          ),
        ],
      ),
    );
  }
}
