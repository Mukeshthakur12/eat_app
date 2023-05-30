import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled1/Utils/app_colors.dart';
import 'package:untitled1/Utils/helper.dart';
import 'package:untitled1/apppadding.dart';

import 'app_text.dart';

class ItemReview extends StatelessWidget {
   ItemReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return AppPadding.y2(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/Offer/menu_item.png',height: 42,width: 38,),
              Helper.horizontalSpacing(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText("Panjabi Combo",style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600
                  ),textColor: username,),
                  RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 17,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              )
            ],
          ),
          Helper.verticalSpacing(),
          Helper.verticalSpacing(),
          Container(
            height: 1,
            color: itemline,
          ),

        ],

      ),
    );
  }
}
