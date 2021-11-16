import 'package:flutter/material.dart';
import 'package:project_watch_wallet/common_widgets/custom_elevated_button.dart';

class CustomButton extends CustomElevatedButton {
  CustomButton(
      {Key? key,
      required String text,
      required Color color,
      required Color textColor,
      required VoidCallback onPressed,
      required double borderRadius,
      required double height})
      : super(
            key: key,
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 15.0),
            ),
            color: color,
            borderRadius: borderRadius,
            onPressed: onPressed,
            height: height);
}
