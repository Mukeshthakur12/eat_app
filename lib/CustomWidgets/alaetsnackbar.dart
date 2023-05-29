import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';
import '../apppadding.dart';
import 'app_text.dart';

class alertSnackbar extends StatelessWidget {
  final String text;

  const alertSnackbar({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Container(
      color: appDangerShade,
      child: Center(
        child: AppPadding.cafetile(
          child: AppText(
            text,
            style: th.labelLarge?.copyWith(fontWeight: FontWeight.w700),
            textColor: appColorWhite,
          ),
        ),
      ),
    );
  }
}
