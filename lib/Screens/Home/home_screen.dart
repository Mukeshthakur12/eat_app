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
import '../cafe/cafecard.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

    return BaseAppScaffold(
        child: Stack(
          children: [
            ListView(
              children: [
                SliderInd(),
                SizedBox(height: 5,),
                // MyOrder(),
                /*foodimagecard(
              image1: SvgPicture.asset('assets/addfood/veg.svg'),
              image2: SvgPicture.asset('assets/addfood/star.svg'),
              count: '2',
              title: 'Panjabi Combo',
              description:
              'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
              price: '₹160',
            ),
            foodCard(
              image1: SvgPicture.asset('assets/addfood/veg.svg'),
              image2: SvgPicture.asset('assets/addfood/star.svg'),
              count: '2',
              title: 'Panjabi Combo',
              description:
              'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
              price: '₹160',
            ),*/

                /*CafeCardWidget(
              imagePath: 'assets/Offer/promo_img.jpg',
              location: 'Delhi Heights, Chanakyapuri – Try The Best Of Delhi',
              status: 'Now open',
              closesAt: 'Closes at 11:00pm',
              startingAt: 'Starting at ₹120',
              time: '30-45 Min',
              distance: '2km',
            ),*/

                /*VerticalContainerWidget(
              imagePath: 'assets/container/food.png',
              text: 'Veg Pulav',
            ),

            HorizontalContainerWidget(
              imagePath: 'assets/container/food.png',
              text: 'Pizza',
            ),*/
                /*
            CafeCardTilesWidget(
              imagePath: 'assets/cafe/cafecard.png',
              text: 'Delhi Heights, Chanakyapuri – Try The Best Of Delhi',
            ),*/
                /*
            alertSnackbar(
              text: 'QR Code is not active',
            ),*/
                /*FirstImageWidget(
              imagePath: 'assets/cafe/cafecard.png',
              text: 'Panjabi Combo',
            ),*/
                Card(
                  elevation: 0,
                  color: appColorWhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Set border radius to zero
                  ),
                  child: AppPadding.a2r(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            AppText(
                              'Best Nearby',
                              style: th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 16),
                              textColor: appPrimaryColor,
                            ),
                          ],
                        ),
                        Helper.verticalSpacing(),
                        Helper.verticalSpacing(),
                        Helper.verticalSpacing(),
                        Container(
                          height: 90, // Fixed height for the ListView
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Helper.horizontalSpacing(),
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/container/food.png',
                                        height: 55,
                                        width: 55,
                                      ),
                                      Helper.verticalSpacing(),

                                      AppText(
                                        'Item $index',
                                        style: th.headlineSmall?.copyWith(fontWeight: FontWeight.w500,fontSize: 12),
                                        textColor: appColorBlack,
                                      ),

                                    ],
                                  ),
                                  Helper.horizontalSpacing(),
                                  Helper.horizontalSpacing(),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  color: appColorWhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Set border radius to zero
                  ),
                  child: AppPadding.a20(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/home/qrscanned.svg'),
                              Helper.verticalSpacing(),
                              Helper.verticalSpacing(),
                              AppText(
                                '1600+',
                                style: th.headlineMedium?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),
                                textColor: appColorBlack,
                              ),
                              SizedBox(height: 2),
                              AppText(
                                'QR Scanned',
                                style: th.headlineSmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                                textColor: appColorBlack,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/home/orderdone.svg'),
                              Helper.verticalSpacing(),
                              Helper.verticalSpacing(),
                              AppText(
                                '1600+',
                                style: th.headlineMedium?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),
                                textColor: appColorBlack,
                              ),
                              SizedBox(height: 2),
                              AppText(
                                'Order Served',
                                style: th.headlineSmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                                textColor: appColorBlack,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/home/resturent.svg',height: 28,width:28),
                              Helper.verticalSpacing(),
                              Helper.verticalSpacing(),
                              AppText(
                                '1600+',
                                style: th.headlineMedium?.copyWith(fontWeight: FontWeight.w700,fontSize: 18),
                                textColor: appColorBlack,
                              ),
                              SizedBox(height: 2),
                              AppText(
                                'Restaurants',
                                style: th.headlineSmall?.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                                textColor: appColorBlack,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                ),

                Card(
                  elevation: 0,
                  color: appColorWhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Set border radius to zero
                  ),
                  child: AppPadding.a20(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            //SizedBox(width: 4,),
                            AppText(
                              'Explore Nearby',
                              style: th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 16),
                              textColor: appPrimaryColor,
                            ),
                          ],
                        ),
                        Helper.verticalSpacing(),
                        Helper.verticalSpacing(),
                        ListView.builder(
                          // scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    PersistentNavBarNavigator.pushNewScreen(
                                      context,
                                      screen: cafeDetsails(),
                                      withNavBar: false,
                                      pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                    );
                                  },
                                  child: CafeCardWidget(
                                    imagePath: 'assets/Offer/promo_img.jpg',
                                    location: 'Delhi Heights, Chanakyapuri – Try The Best Of Delhi',
                                    status: 'Now open',
                                    closesAt: 'Closes at 11:00pm',
                                    startingAt: 'Starting at ₹120',
                                    time: '30-45 Min',
                                    distance: '2km',
                                  ),
                                ),
                                Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Color(0xffF1F1F1),
                                ),
                                Helper.verticalSpacing(),

                              ],
                            );
                          },
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),

            /*foodimagecard(
              image1: SvgPicture.asset('assets/addfood/veg.svg'),
              image2: SvgPicture.asset('assets/addfood/star.svg'),
              count: '2',
              title: 'Panjabi Combo',
              description:
              'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
              price: '₹160',
            ),
            foodCard(
              image1: SvgPicture.asset('assets/addfood/veg.svg'),
              image2: SvgPicture.asset('assets/addfood/star.svg'),
              count: '2',
              title: 'Panjabi Combo',
              description:
              'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
              price: '₹160',
            ),*/

            /*CafeCardWidget(
              imagePath: 'assets/Offer/promo_img.jpg',
              location: 'Delhi Heights, Chanakyapuri – Try The Best Of Delhi',
              status: 'Now open',
              closesAt: 'Closes at 11:00pm',
              startingAt: 'Starting at ₹120',
              time: '30-45 Min',
              distance: '2km',
            ),*/

            /*VerticalContainerWidget(
              imagePath: 'assets/container/food.png',
              text: 'Veg Pulav',
            ),

            HorizontalContainerWidget(
              imagePath: 'assets/container/food.png',
              text: 'Pizza',
            ),*/
            /*
            CafeCardTilesWidget(
              imagePath: 'assets/cafe/cafecard.png',
              text: 'Delhi Heights, Chanakyapuri – Try The Best Of Delhi',
            ),*/
            /*
            alertSnackbar(
              text: 'QR Code is not active',
            ),*/
            /*FirstImageWidget(
              imagePath: 'assets/cafe/cafecard.png',
              text: 'Panjabi Combo',
            ),*/

            Positioned(
                left: 0,
                right: 0,
                top: 580,
                bottom: -30,
                child: MyOrder(),),

          ],
        ),
    );
  }
}
