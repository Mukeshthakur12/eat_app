import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_indicator/page_indicator.dart';
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
import '../Common/add_instruction_popup.dart';
import '../Common/search_bar_scafold.dart';
import '../cafe/cafecard.dart';
class foodMenu extends StatefulWidget {
  const foodMenu({Key? key}) : super(key: key);

  @override
  State<foodMenu> createState() => _foodMenu();
}

class _foodMenu extends State<foodMenu> {
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
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return SearchappBar(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CafeCardTilesWidget(
              imagePath: 'assets/cafe/cafecard.png',
              text: 'Delhi Heights, Chanakyapuri – Try The Best Of Delhi',
            ),

            Card(
              elevation: 0,
              color: appColorWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Set border radius to zero
              ),
              child: Container(
                height: 77,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Helper.horizontalSpacing(),
                        Helper.horizontalSpacing(),
                        Helper.horizontalSpacing(),
                        HorizontalContainerWidget(
                          imagePath: 'assets/container/food.png',
                          text: 'Pizza',
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: appColorWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Set border radius to zero
              ),
              child: ExpansionTile(
                title: AppText(
                  'Recommended (20)',
                  style: th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 16),
                  textColor: appPrimaryColor,
                ),

                onExpansionChanged: (isExpanded) {
                  setState(() {
                    _isExpanded = isExpanded;
                  });
                },
                children: [
                  if (_isExpanded)
                    AppPadding.a2t(
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  foodimagecard(
                                    image1: SvgPicture.asset('assets/addfood/veg.svg'),
                                    image2: SvgPicture.asset('assets/addfood/star.svg'),
                                    count: '2',
                                    title: 'Panjabi Combo',
                                    description:
                                    'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
                                    price: '₹160',
                                  ),
                                ],
                              );
                            },
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  foodCard(
                                    image1: SvgPicture.asset('assets/addfood/veg.svg'),
                                    image2: SvgPicture.asset('assets/addfood/star.svg'),
                                    count: '2',
                                    title: 'Panjabi Combo',
                                    description:
                                    'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
                                    price: '₹160',
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Card(
              elevation: 0,
              color: appColorWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Set border radius to zero
              ),
              child: ExpansionTile(
                title: AppText(
                  'Recommended (20)',
                  style: th.titleLarge?.copyWith(fontWeight: FontWeight.w700,fontSize: 16),
                  textColor: appPrimaryColor,
                ),

                onExpansionChanged: (isExpanded) {
                  setState(() {
                    _isExpanded = isExpanded;
                  });
                },
                children: [
                  if (_isExpanded)
                    AppPadding.a2t(
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  foodimagecard(
                                    image1: SvgPicture.asset('assets/addfood/veg.svg'),
                                    image2: SvgPicture.asset('assets/addfood/star.svg'),
                                    count: '2',
                                    title: 'Panjabi Combo',
                                    description:
                                    'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
                                    price: '₹160',
                                  ),
                                ],
                              );
                            },
                          ),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  Helper.verticalSpacing(),
                                  foodCard(
                                    image1: SvgPicture.asset('assets/addfood/veg.svg'),
                                    image2: SvgPicture.asset('assets/addfood/star.svg'),
                                    count: '2',
                                    title: 'Panjabi Combo',
                                    description:
                                    'Butter Khulcha+Aloo Stuffed Khulcha+Panner Stuffed Kulcha+Panner Butter Masala+Dal Makhani+Boondi Raita+Laccha Pyaz+Papad',
                                    price: '₹160',
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),



          ],
        ),
      ),

    );
  }

}
