import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/Screens/Common/slider.dart';

import '../Utils/app_colors.dart';
import '../Utils/helper.dart';
import '../apppadding.dart';
import 'app_text.dart';
import 'app_text_button.dart';
import 'custom_button_widget.dart';

class MyOrder extends StatefulWidget {
  final String? status;
  final VoidCallback? onpressed;
  const MyOrder({this.status,this.onpressed,Key? key}) : super(key: key);
  const MyOrder.ordered({this.status='My Orders',this.onpressed,Key? key}): super(key: key);
  const MyOrder.cart({this.status='My Cart',this.onpressed,Key? key}): super(key: key);
  @override
  State<MyOrder> createState() => _MyOrder();
}

class _MyOrder extends State<MyOrder> {
  @override
  Widget build(BuildContext context)
  {
    var th = Theme.of(context).textTheme;
    return Container(
      color:appWarningShade,
      child: Column(
        children: [
          AppPadding.cafetile(
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/cafe/cafeorder.svg'
                ),
                Helper.horizontalSpacing(),
                Expanded(
                  child: AppText(
                    'Check your order status',
                  style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                  textColor: appColorBlack,
                  ),
                ),
                CustomButtonWidget(
                  height:31 ,
                  width:93,
                  fontSize: 12,
                  padding: EdgeInsets.all(4.0),
                  backgroundColor: cardtilbuton,
                  borderColor: Colors.transparent,
                  fontColor: appColorWhite,
                  //padding:8.0,
                  onTap: () =>
                  {
                  }, // or omit the onTap parameter
                  title: widget.status,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
