import 'package:flutter/material.dart';
import 'package:untitled1/Utils/app_colors.dart';

class CustomInputDecoration {
  static withLabel({
    required String labelText,
    String? hintText,
    String? errorText,
    IconData? errorIcon,
    IconData? icon,
    VoidCallback? onIconClick,
    Widget? prefix,
  }) {
    var errorBorder = const UnderlineInputBorder(
      borderSide: BorderSide(
        color: appDangerShade,
      ),
    );
    var borderBasic = const UnderlineInputBorder(
      borderSide: BorderSide(
        color: inputBorderColor,
      ),
    );
    var iconData = (errorText ?? '').isNotEmpty
        ? Icon(
      errorIcon,
      color: appDangerShade,
    )
        : Icon(
      icon,
      color: inputIconColor,
    );
    return InputDecoration(
      prefix: prefix,
      filled: true,
      fillColor: inputFillColor,
      errorStyle: const TextStyle(
        color: appDangerShade,
      ),
      labelText: labelText,
      labelStyle: const TextStyle(color: inputLabelColor),
      hintText: hintText,
      hintStyle: const TextStyle(color: inputLabelColor),
      suffixIcon: onIconClick != null
          ? InkWell(
        onTap: onIconClick,
        child: iconData,
      )
          : iconData,
      errorText: errorText,
      border: borderBasic,
      focusedBorder: borderBasic,
      focusedErrorBorder: errorBorder,
      disabledBorder: borderBasic,
      enabledBorder: borderBasic,
      errorBorder: errorBorder,
    );
  }

/*  static getInputDecorationWithLabel(
      {String? labelText, String? hintText, Widget? suffixIcon, String? errorText}) {
    return InputDecoration(
      contentPadding: EdgeInsets.all(4),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      fillColor: Colors.white,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsHelper.hintColor,
          width: 1.0,
        ),
      ),
      errorStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.red,
      ),
      hintStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: ColorsHelper.hintColor,
      ),
      hintText: hintText,
      labelStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: ColorsHelper.hintColor,
      ),
      labelText: labelText,
      suffixIcon: suffixIcon,
      errorText: errorText
    );
  }

  static getSearchInputDecoration({TextEditingController? controller, VoidCallback? onSearchClear}) {
    return InputDecoration(
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(4.0),
      //   ),
      //   borderSide: BorderSide(
      //     color: ColorsHelper.hintColor,
      //     width: 0.5,
      //   ),
      // ),
      fillColor: Colors.white,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsHelper.hintColor,
          width: 1.0,
        ),
      ),
      errorStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.red,
      ),
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: ColorsHelper.hintColor,
      ),
      hintText: 'Search..',
      prefixIcon: Icon(
        Icons.search,
        size: 18,
      ),
      prefixIconConstraints: BoxConstraints(
        minWidth: 32.0,
      ),
      suffixIcon: (controller?.text ?? '').isNotEmpty && onSearchClear != null ? InkWell(
          onTap: () {
            controller?.clear();
            onSearchClear();
          },
          child: Icon(
            Icons.close,
            size: 18,
          )) : null,
      suffixIconConstraints: BoxConstraints(
        minWidth: 32.0,
      ),
    );
  }*/
}
