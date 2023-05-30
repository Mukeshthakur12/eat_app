import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

class OrderBookPopUp extends StatefulWidget {
  final VoidCallback ? onPressed;
  // final bool type;
  const OrderBookPopUp({ this.onPressed,
    Key? key
  }) : super(key: key);
  @override
  _OrderBookPopUp createState() => _OrderBookPopUp();
}

class _OrderBookPopUp extends State<OrderBookPopUp> {
   @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: Color(0xffFFFFFF),
      child: Card(
        elevation: 0,
        // margin: EdgeInsets.all(8),
        child: AppPadding.a2(
          child: Container(
            padding: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText("Order Complete Successfully",style: th.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500
                    ),textColor: reviewdetail,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.cancel_outlined))
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  
                  child:AppPadding.a(
                    child: Center(
                        child: Image.asset(
                            'assets/Offer/success.png',height: 160,width: 160,)),
                  )
                ),
                SizedBox(height: 12,),
                InkWell(
                  onTap: widget.onPressed,
                  child: Container(
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(170),
                      color: submitbtn,
                    ),
                    // padding: EdgeInsets.only(left: 8,right: 8),
                    child: AppPadding.a2(
                      child: InkWell(
                        onTap: widget.onPressed,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText("Rate the Order",style: th.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w700
                            ),textColor: Colors.white,),
                            Icon(CupertinoIcons.arrow_right,size: 24,color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 12,),
              ],
            ),
          ),
        ),
      ),

      );
  }
}
