import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Screens/Common/empty_scafold.dart';
import 'package:untitled1/Screens/Common/menu_iteam_card.dart';
import 'package:untitled1/Utils/app_colors.dart';
import 'package:untitled1/Utils/helper.dart';

import '../../CustomWidgets/cafedetails.dart';
import '../Common/menu_iteam_card_noimg.dart';

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return  EmptyScafold(
      title: "(#220723-01233-00020-01)",
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
               children: [
                 Helper.horizontalSpacing(16),
                 Icon(Icons.shop,size:20,color: appPrimaryColor,),
                 Helper.horizontalSpacing(10),
                 AppText("Table - 01233-00020",style: th.bodyMedium?.copyWith(
                   fontWeight: FontWeight.w700
                 ),textColor: appPrimaryColor,),
               ],
             ),
             MenuIteam("Panjabi Combo", uimage:'assets/Offer/menu_item.png',itmsize: "Regular (Serve 1, 17.7 CM)",
                 itminfo: "Pepperoni • Extra cheese • Black olives",
                 itmcount: "2x", itmprice: "₹160"),
             MenuIteam("Panjabi Combo", uimage:'assets/Offer/menu_item.png',itmsize: "Regular (Serve 1, 17.7 CM)",
                 itminfo: "Pepperoni • Extra cheese • Black olives",
                 itmcount: "2x", itmprice: "₹160"),
             MenuIteamNoImage("Panjabi Combo", itmsize: "Regular (Serve 1, 17.7 CM)",
                 // itminfo: "Pepperoni • Extra cheese • Black olives",
                 itmcount: "2x", itmprice: "₹160"),
             MenuIteamNoImage("Panjabi Combo", itmsize: "Regular (Serve 1, 17.7 CM)",
                 // itminfo: "Pepperoni • Extra cheese • Black olives",
                 itmcount: "2x", itmprice: "₹160"),
           ],
         ),
       )
        ],
      ),

    );
  }
}
