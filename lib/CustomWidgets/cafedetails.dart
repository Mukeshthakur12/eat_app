import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';
import '../Utils/helper.dart';
import '../apppadding.dart';
import 'app_text.dart';

class CafeCardTilesWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  const CafeCardTilesWidget({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
      color: appColorWhite,
      child: AppPadding.cafetile(
        child: Row(
          children: [
            Expanded(
              child: AppText(
                text,
                style: th.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                textColor: appColorBlack,
              ),
            ),
            Helper.horizontalSpacing(),
            Container(
              alignment: Alignment.centerRight,
              child: Image.asset(
                imagePath,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
