import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Screens/Common/base_app_scafold.dart';
import 'package:untitled1/Screens/Common/slider.dart';
import 'package:untitled1/apppadding.dart';

import '../../CustomWidgets/alaetsnackbar.dart';
import '../../CustomWidgets/cafecard.dart';
import '../../CustomWidgets/cafedetails.dart';
import '../../CustomWidgets/myorder.dart';
import '../../CustomWidgets/cardcatogery.dart';
import '../../CustomWidgets/custom_button_widget.dart';
import '../../CustomWidgets/foodcard.dart';
import '../../CustomWidgets/foodimagecard.dart';
import '../../CustomWidgets/orderrating.dart';
import '../../Utils/app_colors.dart';
import '../../Utils/helper.dart';
import '../Common/empty_scafold.dart';
import '../food/foodmenu.dart';
class cafeDetsails extends StatefulWidget {
  const cafeDetsails({Key? key}) : super(key: key);

  @override
  State<cafeDetsails> createState() => _cafeDetsails();
}

class _cafeDetsails extends State<cafeDetsails> {
  late PageController controller;

  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }
  int rate=4;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return EmptyScafold(
      title:'cafe_name',
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                    elevation: 0,
                    color: appColorWhite,
                    child: AppPadding.a20(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Helper.verticalSpacing(),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
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
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.centerRight,
                                      child: SvgPicture.asset('assets/cafecard/veg.svg')
                                  ),
                                ),

                              ]
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),
                          AppText(
                            'Delhi Heights, Chanakyapuri – Try The Best Of Delhi',
                            style: th.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                            textColor: appColorBlack,
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),
                          AppText(
                            'Eat Best Eat veg',
                            style: th.labelMedium?.copyWith(fontWeight: FontWeight.w500),
                            textColor: cafecardgray,
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),
                          Row(
                            children: [
                              AppText(
                                'Now open',
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
                                'Closes at 11:00pm',
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
                                '30-45 Min',
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
                                '2km',
                                style: th.labelMedium?.copyWith(fontWeight: FontWeight.w500),
                                textColor: appColorBlack,
                              ),
                            ],
                          ),
                          Helper.verticalSpacing(),
                        ],
                      ),
                    )
                ),
                Card(
                    elevation: 0,
                    color: appColorWhite,
                    child: AppPadding.a20(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Helper.verticalSpacing(),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/cafecard/Location.svg'),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              Expanded(
                                child: AppText(
                                  '4517 Washington Ave. Manchester, Kentucky 39495',
                                  style: th.bodySmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                                  textColor: appColorBlack,
                                ),
                              ),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              AppText(
                                '4.1(12)',
                                style: th.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                                textColor: appColorBlack,
                              ),
                            ],
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/cafecard/call.svg'),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              Expanded(
                                child: AppText(
                                  '+91-9509965856',
                                  style: th.bodySmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                                  textColor: appColorBlack,
                                ),
                              ),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              AppText(
                                'CALL',
                                style: th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 12),
                                textColor: appPrimaryColor,
                              ),
                            ],
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/cafecard/sms.svg'),
                              Helper.horizontalSpacing(),
                              Helper.horizontalSpacing(),
                              Expanded(
                                child: AppText(
                                  'gertrude@gmail.com',
                                  style: th.bodySmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                                  textColor: appColorBlack,
                                ),
                              ),
                            ],
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),

                          Divider(
                            height: 1,
                            thickness: 1,
                            color: Color(0xffF1F1F1),
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),
                          Row(
                            children: [
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: scbg, // Fill color: #E6DEDC
                                  borderRadius: BorderRadius.circular(39), // Radius: 39px
                                  border: Border.all(
                                    color: scborder, // Stroke color: #E8C2B8
                                    width: 1,
                                  ),
                                ),
                                child: AppPadding.a(child: SvgPicture.asset('assets/cafecard/web.svg')),
                              ),
                              Helper.horizontalSpacing(),
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: scbg, // Fill color: #E6DEDC
                                  borderRadius: BorderRadius.circular(39), // Radius: 39px
                                  border: Border.all(
                                    color: scborder, // Stroke color: #E8C2B8
                                    width: 1,
                                  ),
                                ),
                                child: AppPadding.a(child: SvgPicture.asset('assets/cafecard/fb.svg')),
                              ),
                              Helper.horizontalSpacing(),
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: scbg, // Fill color: #E6DEDC
                                  borderRadius: BorderRadius.circular(39), // Radius: 39px
                                  border: Border.all(
                                    color: scborder, // Stroke color: #E8C2B8
                                    width: 1,
                                  ),
                                ),
                                child: AppPadding.a(child: SvgPicture.asset('assets/cafecard/insta.svg')),
                              ),
                              Helper.horizontalSpacing(),
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: scbg, // Fill color: #E6DEDC
                                  borderRadius: BorderRadius.circular(39), // Radius: 39px
                                  border: Border.all(
                                    color: scborder, // Stroke color: #E8C2B8
                                    width: 1,
                                  ),
                                ),
                                child: AppPadding.a(child: SvgPicture.asset('assets/cafecard/twit.svg')),
                              ),
                              Helper.horizontalSpacing(),
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: scbg, // Fill color: #E6DEDC
                                  borderRadius: BorderRadius.circular(39), // Radius: 39px
                                  border: Border.all(
                                    color: scborder, // Stroke color: #E8C2B8
                                    width: 1,
                                  ),
                                ),
                                child: AppPadding.a(child: SvgPicture.asset('assets/cafecard/linkdin.svg')),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                ),
                Card(
                    elevation: 0,
                    color: appColorWhite,
                    child: AppPadding.a20(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Helper.verticalSpacing(),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/cafecard/Location.svg',height: 46,width: 46,),
                              Helper.horizontalSpacing(),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppText(
                                      'Joey Tribyani',
                                      style: th.labelLarge?.copyWith(fontWeight: FontWeight.w600,),
                                      textColor: appColorBlack,
                                    ),
                                    AppText(
                                      'Owner ',
                                      style: th.bodySmall?.copyWith(fontWeight: FontWeight.w400),
                                      textColor: appColorBlack,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Helper.verticalSpacing(),
                          Helper.verticalSpacing(),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: AppText(
                                  'Cursus sed magna congue arcu. Ipsum sit interdum sed id. Facilisi orci rhoncus arcu et egestas vitae, tincidunt platea. Odio elementum.',
                                  style: th.bodySmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                                  textColor: appColorBlack,
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),
                    )
                ),
                Helper.verticalSpacing(),
                AppPadding.a20(
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/cafecard/Location.svg',),
                      Helper.horizontalSpacing(),
                      SvgPicture.asset('assets/cafecard/fassi.svg',),
                      Helper.horizontalSpacing(),
                      Expanded(
                        child: AppText(
                          'Certified',
                          style: th.bodySmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                          textColor: successColor,
                        ),
                      ),
                      Helper.horizontalSpacing(),
                      Helper.horizontalSpacing(),
                      Helper.horizontalSpacing(),
                      Helper.horizontalSpacing(),
                      AppText(
                        'FSSI 9022119922',
                        style: th.bodySmall?.copyWith(fontWeight: FontWeight.w500),
                        textColor: appColorBlack,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 16.0, // Adjust the position as per your requirement
              right: 0.0,
              left: 0,// Adjust the position as per your requirement
              child: Center(
                child: InkWell(
                  child: CustomButtonWidget(
                    height:52 ,
                    width:176,
                    fontSize: 12,
                    padding: EdgeInsets.all(4.0),
                    backgroundColor: submitbtn,
                    borderColor: border.withOpacity(0.6),
                    fontColor: appColorWhite,
                    borderWidth: 5,
                    //padding:8.0,
                    onTap: () =>
                    {
                    PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: foodMenu(),
                    withNavBar: false,
                    pageTransitionAnimation:
                    PageTransitionAnimation.cupertino,
                    )
                    }, // or omit the onTap parameter
                    title: 'My order',
                  ),
                ),
              )
          ),
        ],
      ),

    );
  }
}
