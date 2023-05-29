import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Screens/Common/base_app_scafold.dart';
import 'package:untitled1/Screens/Common/cafe_detail_scalfold.dart';
import 'package:untitled1/Screens/Common/slider.dart';
import 'package:untitled1/Screens/cafe/cafe_overview.dart';
import 'package:untitled1/Screens/cafe/cafe_reviews.dart';
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

    return CafeDetail(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // color: Colors.red,
                  height: 200,
                  child:PageIndicatorContainer(
                    key: key,
                    child: PageView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        final screenWidth = MediaQuery.of(context).size.width;
                        final cardWidth = screenWidth * 0.98;
                        // final horizontalPadding = (screenWidth - cardWidth) / 2;

                        return Container(
                          // color: Colors.blue,
                          // padding: EdgeInsets.only(left: 5),
                          child: Image.asset('assets/cafecard/cafe.jpg'),
                        );
                      },
                      itemCount: 4,
                      controller: controller,
                      reverse: true,
                      onPageChanged: (int index) {
                        // Update the selected dot index here if needed
                      },

                    ),
                    align: IndicatorAlign.bottom,
                    length: 4,
                    indicatorSelectorColor:Color(0xffFFFFFF) ,
                    indicatorColor: Color(0xff000000),
                    indicatorSpace: 10.0,
                  ),

                ),
                DefaultTabController(
                  length: 2, // Number of tabs
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(
                            text: 'Overview',
                          ),
                          Tab(
                            text: 'Review',
                          ),
                        ],
                        indicatorColor: appPrimaryColor,
                        labelColor: appPrimaryColor,
                        labelStyle: th.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600
                        ),
                        unselectedLabelStyle: th.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400
                        ),
                        unselectedLabelColor: textLabelColor,
                      ),
                      SizedBox(
                        height: 400,
                        child: TabBarView(
                          children: [
                            CafeOverview(),
                            CafeReview(),
                            // Content for Tab 1
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 16.0,
              right: 0.0,
              left: 0,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 5,
                      color: submitbtn.withOpacity(0.5),

                    )
                  ),
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
                      },
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.restaurant_menu,color: Colors.white,),
                            Helper.horizontalSpacing(15),
                            AppText("Food Menu",style: th.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w700
                            ),textColor: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
          ),
        ],
      ),

    );
  }
}
