import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/app_colors.dart';
import '../Utils/helper.dart';
import 'app_text.dart';

class FirstImageWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  const FirstImageWidget({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 39,
                width: 42,
              ),
            ),
            Helper.horizontalSpacing(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text,
                  style: th.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  textColor: appColorBlack,
                ),
                SvgPicture.asset('assets/addfood/emptystar.svg'),
              ],
            )
          ],
        ),
        Helper.verticalSpacing(),
        Helper.verticalSpacing(),
        Divider(
          height: 1,
          thickness: 1,
          color: Color(0xffF1F1F1),
        ),
      ],
    );
  }
}
