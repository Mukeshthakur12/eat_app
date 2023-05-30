import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/item_review.dart';
import 'package:untitled1/Screens/Common/add_instruction_popup.dart';
import 'package:untitled1/Screens/Common/cafe_detail_scalfold.dart';
import 'package:untitled1/Screens/Common/empty_scafold.dart';
import 'package:untitled1/Screens/Common/menu_iteam_card.dart';
import 'package:untitled1/Screens/Common/order_book.dart';
import 'package:untitled1/Screens/Common/order_status.dart';
import 'package:untitled1/Utils/app_colors.dart';
import 'package:untitled1/Utils/helper.dart';
import 'package:untitled1/apppadding.dart';

import '../../../CustomWidgets/cafedetails.dart';
import '../../../CustomWidgets/custom_button_widget.dart';



class OrderReview extends StatelessWidget {
  OrderReview({Key? key}) : super(key: key);
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return  CafeDetail(
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: containercolor,
                child: AppPadding.a2(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText("Rate your Experience",style: th.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700
                      ),textColor: appPrimaryColor,),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 32,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
              ),

              Helper.verticalSpacing(),
              Helper.verticalSpacing(),
              Container(
                color: containercolor,
                child: AppPadding.a2(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText("Rate Dish",style: th.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700
                      ),textColor: appPrimaryColor,),
                      ItemReview(),
                      ItemReview(),
                      ItemReview(),

                    ],
                  ),
                ),
              ),
              Container(
                color: containercolor,
                child: AppPadding.a2(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText("Write Full Review",style: th.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500
                      ),textColor: reviewdetail,),
                      SizedBox(height: 10),
                      Container(
                        // padding: EdgeInsets.symmetric( vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color:  Color(0xffBFD1E3)
                          ),
                        ),
                        child: Column(
                          children: [
                            TextField(
                              controller: _textEditingController,
                              maxLines: 5,
                              maxLength: 100,
                              decoration: InputDecoration(
                                hintText: 'Type Here',
                                border: InputBorder.none,

                                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              ),
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(170),
                            color: submitbtn,
                          ),
                          // padding: EdgeInsets.only(left: 8,right: 8),
                          child: AppPadding.a2(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText("Submit",style: th.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700
                                ),textColor: Colors.white,),
                                Icon(CupertinoIcons.arrow_right,size: 24,color: Colors.white,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
      ),

    );
  }
}
