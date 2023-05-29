import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/app_colors.dart';
import '../Utils/helper.dart';
import '../apppadding.dart';
import 'app_text.dart';

class CafeCardWidget extends StatelessWidget {
  final String imagePath;
  final String location;
  final String status;
  final String closesAt;
  final String startingAt;
  final String time;
  final String distance;

  const CafeCardWidget({
    required this.imagePath,
    required this.location,
    required this.status,
    required this.closesAt,
    required this.startingAt,
    required this.time,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
      color: appColorWhite,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity, // Make the container take full width
                child: Image.asset(imagePath,
                  fit: BoxFit.cover,),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: cardtilbuton,
                      ),
                      child: AppPadding.a(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/cafecard/crown.svg'),
                            AppText(
                              'Premium',
                              style: th.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                              textColor: appColorWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: appSuccessShade,
                      ),
                      child: AppPadding.a(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/addfood/star.svg'),
                            AppText(
                              '4.1(12)',
                              style: th.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                              textColor: appColorWhite,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Helper.verticalSpacing(),
          Helper.verticalSpacing(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AppText(
                  location,
                  style: th.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                  textColor: appColorBlack,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                  child: SvgPicture.asset('assets/cafecard/veg.svg')
              ),
            ],
          ),
          Helper.verticalSpacing(),
          Helper.verticalSpacing(),
          Row(
            children: [
              AppText(
                status,
                style: th.labelMedium?.copyWith(fontWeight: FontWeight.w600),
                textColor: appSuccessShade,
              ),
              Helper.horizontalSpacing(),
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: cafecardgray,
                ),
              ),
              Helper.horizontalSpacing(),
              AppText(
                closesAt,
                style: th.labelMedium?.copyWith(fontWeight: FontWeight.w500),
                textColor: cafecardgray,
              ),
            ],
          ),
          Helper.verticalSpacing(),
          Helper.verticalSpacing(),
          Row(
            children: [
              AppText(
                'Starting at ₹120',
                style: th.labelMedium?.copyWith(fontWeight: FontWeight.w500),
                textColor: appColorBlack,
              ),
              Helper.horizontalSpacing(),
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: cafecardgray,
                ),
              ),
              Helper.horizontalSpacing(),
              SvgPicture.asset('assets/cafecard/timer.svg'),
              Helper.horizontalSpacing(),
              AppText(
                time,
                style: th.labelMedium?.copyWith(fontWeight: FontWeight.w500),
                textColor: appColorBlack,
              ),
              Helper.horizontalSpacing(),
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: cafecardgray,
                ),
              ),
              Helper.horizontalSpacing(),
              AppText(
                distance,
                style: th.labelMedium?.copyWith(fontWeight: FontWeight.w500),
                textColor: appColorBlack,
              ),
            ],
          ),
          Helper.verticalSpacing(),
          Helper.verticalSpacing(),
        ],
      ),
    );
  }
}
