import 'package:flutter/material.dart';
import 'package:untitled1/Utils/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String? title;
  final Widget? child;
  final Color fontColor;
  final double borderWidth;
  final double? height;
  final double? width;
  final Color borderColor;
  final Color backgroundColor;
  final Color disabledColor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;

  const CustomButtonWidget({
    Key? key,
    this.title,
    this.child,
    this.fontColor = appPrimaryColor,
    this.borderWidth = 1,
    this.height,
    this.width,
    this.borderColor = appPrimaryColor,
    this.backgroundColor = Colors.transparent,
    this.disabledColor = Colors.grey,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
    this.padding,
    required this.onTap,
  }) : super(key: key);

  const CustomButtonWidget.fillBtn(
      {Key? key,
        this.title,
        this.child,
        this.fontColor = Colors.white,
        this.borderWidth = 1,
        this.height,
        this.width,
        this.borderColor = appPrimaryColor,
        this.backgroundColor = appPrimaryColor,
        this.disabledColor = appFilledButtonDisabledColor,
        this.fontSize = 16,
        this.fontWeight = FontWeight.normal,
        this.padding,
        required this.onTap})
      : super(key: key);

  const CustomButtonWidget.outlineBtn(
      {Key? key,
        this.title,
        this.child,
        this.fontColor = appPrimaryColor,
        this.borderWidth = 1,
        this.height,
        this.width,
        this.borderColor = appPrimaryColor,
        this.backgroundColor = appWhiteShade,
        this.disabledColor = appFilledButtonDisabledColor,
        this.fontSize = 16,
        this.fontWeight = FontWeight.normal,
        this.padding,
        required this.onTap})
      : super(key: key);

  const CustomButtonWidget.outlineBtnBgClear(
      {Key? key,
        this.title,
        this.child,
        this.fontColor = appPrimaryColor,
        this.borderWidth = 1,
        this.height,
        this.width,
        this.borderColor = appPrimaryColor,
        this.backgroundColor = Colors.transparent,
        this.disabledColor = Colors.grey,
        this.fontSize = 16,
        this.fontWeight = FontWeight.normal,
        this.padding,
        required this.onTap})
      : super(key: key);


  const CustomButtonWidget.infoFill(
      {Key? key,
        this.title,
        this.child,
        this.fontColor = Colors.white,
        this.borderWidth = 1,
        this.height,
        this.width,
        this.borderColor = appInfoShade,
        this.backgroundColor = appInfoShade,
        this.disabledColor = appFilledButtonDisabledColor,
        this.fontSize = 16,
        this.fontWeight = FontWeight.normal,
        this.padding,
        required this.onTap})
      : super(key: key);

  const CustomButtonWidget.warningFill(
      {Key? key,
        this.title,
        this.child,
        this.fontColor = Colors.white,
        this.borderWidth = 1,
        this.height,
        this.width,
        this.borderColor = appWarningShade,
        this.backgroundColor = appWarningShade,
        this.disabledColor = appFilledButtonDisabledColor,
        this.fontSize = 16,
        this.fontWeight = FontWeight.normal,
        this.padding,
        required this.onTap})
      : super(key: key);

  const CustomButtonWidget.dangerFill(
      {Key? key,
        this.title,
        this.child,
        this.fontColor = Colors.white,
        this.borderWidth = 1,
        this.height,
        this.width,
        this.borderColor = appDangerShade,
        this.backgroundColor = appDangerShade,
        this.disabledColor = appFilledButtonDisabledColor,
        this.fontSize = 16,
        this.fontWeight = FontWeight.normal,
        this.padding,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: onTap != null ? backgroundColor : disabledColor,
          borderRadius: BorderRadius.circular(56),
          border: Border.all(
            color: onTap != null ? borderColor : Colors.grey.shade300,
            width: borderWidth,
          ),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: defaultPadding * 0.50, vertical: defaultPadding * 0.5),
          child: Center(
            child: child ??
                Text(
                  title ?? 'N/A',
                  style: TextStyle(
                    color: fontColor,
                    fontWeight: fontWeight,
                    fontSize: fontSize,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}