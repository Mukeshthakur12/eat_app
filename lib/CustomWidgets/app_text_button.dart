import 'package:flutter/material.dart';
import 'package:untitled1/Utils/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final String? titleText;
  final Widget? title;
  final Color? textColor;
  final VoidCallback? onPressed;

  const AppTextButton.blue({
    Key? key,
    this.titleText,
    this.title,
    this.textColor = appPrimaryColor,
    this.onPressed,
  }) : super(key: key);

  const AppTextButton.grey({
    Key? key,
    this.titleText,
    this.title,
    this.textColor = appButtonColorGrey,
    this.onPressed,
  }) : super(key: key);

  const AppTextButton({
    Key? key,
    this.titleText,
    this.title,
    this.textColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: title ??
          Text(
            titleText ?? '',
            style: TextStyle(color: textColor ?? appPrimaryColor),
          ),
    );
  }
}
