import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Screens/Common/add_instruction_popup.dart';
import 'package:untitled1/Screens/Common/empty_scafold.dart';
import 'package:untitled1/Screens/Common/instruction_popup.dart';
import 'package:untitled1/Screens/Common/menu_iteam_card.dart';
import 'package:untitled1/Screens/Common/order_book.dart';
import 'package:untitled1/Screens/Common/order_status.dart';
import 'package:untitled1/Screens/Common/order_staus_with_img.dart';
import 'package:untitled1/Utils/app_colors.dart';
import 'package:untitled1/Utils/helper.dart';
import 'package:untitled1/apppadding.dart';

import '../../CustomWidgets/cafedetails.dart';
import '../../CustomWidgets/custom_button_widget.dart';
import '../Common/menu_iteam_card_noimg.dart';
import '../food/foodmenu.dart';

class OrderSent extends StatelessWidget {
  OrderSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return  EmptyScafold(
      title: "Your order (#220723-01233-00020-01)",
      child: SingleChildScrollView(
        child: Column(
          children: [
            CafeCardTilesWidget(imagePath: 'assets/cafe/cafecard.png',
                text: "Delhi Heights, Chanakyapuri –"
                    " Try The Best Of Delhi"),
            Helper.verticalSpacing(10),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.shop,size:20,color: appPrimaryColor,),
                          Helper.horizontalSpacing(10),
                          AppText("Table - 01233-00020",style: th.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700
                          ),textColor: appPrimaryColor,),
                        ],
                      ),
                      InkWell(
                            child: Row(
                              children: [
                                Icon(Icons.refresh,color: successColor,size: 16,),
                                AppText("Update Status",style: th.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600
                                ),textColor: successColor,
                                ),
                              ],
                            ),
                          ),


                    ],
                  ),
                  OrderStatusWithImg("Panjabi Combo",itmsize: "Regular (Serve 1, 17.7 CM)",
                    itmcount: "2x", itmprice: "₹160",
                    onpressed: ()=>myFunction(context), uimage: 'assets/container/food.png', itminfo: 'Pepperoni • Extra cheese • Black olives',),
                  OrderStatus.ordered("Panjabi Combo", itmsize: "Regular (Serve 1, 17.7 CM)",
                    itmcount: "2x", itmprice: "₹160",
                    onpressed: ()=>myFunction(context),),
                  OrderBook("Panjabi Combo", itmsize: "Regular (Serve 1, 17.7 CM)",
                    itminfo: "Pepperoni • Extra cheese • Black olives",
                    itmcount: "2x", itmprice: "₹160"
                    ,onpressed: ()=>myFunction(context),),
                  OrderBook.ordered("Panjabi Combo", itmsize: "Regular (Serve 1, 17.7 CM)",
                    itminfo: "Pepperoni • Extra cheese • Black olives",
                    itmcount: "2x", itmprice: "₹160",onpressed: ()=>myFunction(context),),
                ],
              ),
            ),
            Container(
              height: 70,
              color: Colors.white,
              child: AppPadding.a2(
                child: DottedBorder(
                    color: appPrimaryColor,
                    dashPattern: [6, 0, 2, 3],
                    borderType: BorderType.RRect,
                    radius: Radius.circular(120),
                    padding: EdgeInsets.all(6),
                    child: AppPadding.a(
                      child: InkWell(
                        onTap: (){

                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText("Add New Items",style: th.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600
                              ),textColor: appPrimaryColor,),
                              Icon(Icons.add_circle_outline,color: appPrimaryColor,size: 20,),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: AppPadding.a2(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText("Bill Details",style: th.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700
                    ),textColor: username,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText("Item Total",style: th.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400),textColor: textLabelColor,),
                        AppText("₹730",style: th.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500
                        ),textColor: reviewdetail,)
                      ],
                    ),
                    Helper.verticalSpacing(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText("Taxes and charges",style: th.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400),textColor: textLabelColor,),
                        AppText("₹730",style: th.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500
                        ),textColor: reviewdetail,)
                      ],
                    ),
                    Helper.verticalSpacing(),
                    Divider(
                      color: inputLabelColor,
                      thickness: 0.7,
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText("Your Total",style: th.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600),textColor: username,),
                        AppText("₹850",style: th.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600
                        ),textColor: reviewdetail,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Helper.verticalSpacing(),
            Helper.verticalSpacing(),
            Container(
              color: Colors.white,
              child: AppPadding.a2(
                child: Center(
                  child: InkWell(
                    child: CustomButtonWidget(
                      height:52 ,
                      // width:176,
                      disabledColor: btndisable,
                      fontSize: 12,
                      padding: EdgeInsets.all(4.0),
                      backgroundColor: submitbtn,
                      fontColor: appColorWhite,
                      // borderWidth: 5,
                      //padding:8.0,
                      onTap: null,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.shopping_bag,size: 24,color: Colors.white,),
                            AppText("₹120000",style: th.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w700
                            ),textColor: Colors.white,),
                            Row(
                              children: [
                                AppText("Send Order to Kitchen",style: th.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500
                                ),textColor: Colors.white,),
                                Icon(Icons.keyboard_arrow_right_outlined,size: 12,color: Colors.white,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ),
              ),
            )
          ],
        ),
      ),

    );
  }
  void myFunction(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 200,
            child: InstructionPopup(),
          ),
        );
      },
    );
  }
}
