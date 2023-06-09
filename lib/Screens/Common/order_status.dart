import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

class OrderStatus extends StatelessWidget {
  final String uname;
  final String itmsize;
  final String itmcount;
  final String itmprice;
  final String ? status;
  final String ? iconlink;
  final Color ? color_b;
  final VoidCallback ? onpressed;
  final VoidCallback ? ontooltippress;

  const OrderStatus(
      this.uname, { required this.itmsize,required this.itmcount,
        required this.itmprice,this.onpressed,this.status='Cooking',
        this.iconlink='assets/Offer/cooking.svg',
        this.color_b=status_cooking,this.ontooltippress,
        Key? key
      }) : super(key: key);
  const OrderStatus.ordered(
      this.uname, { required this.itmsize,required this.itmcount,
        required this.itmprice,this.onpressed,this.status='Ordered',
        this.iconlink='assets/Offer/oredered.svg',
        this.color_b=successColor,this.ontooltippress,
        Key? key
      }) : super(key: key);
  const OrderStatus.served(
      this.uname, { required this.itmsize,required this.itmcount,
        required this.itmprice,this.onpressed,this.status='Served',
        this.iconlink='assets/Offer/served.svg',
        this.color_b=serveddcolor,this.ontooltippress,
        Key? key
      }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
        child:AppPadding.a2(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // SizedBox(width: 8,),
                  Expanded(
                    flex: 5,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/Offer/green_icon.svg',height: 11,
                              width: 11,
                            ),
                            SizedBox(width: 5,),
                            AppText(uname,style: th.bodyMedium?.copyWith
                              (fontWeight: FontWeight.w700),textColor: username,),
                          ],
                        ),
                        AppText(itmsize,style: th.bodySmall?.copyWith
                          (fontWeight: FontWeight.w500),textColor: reviewdetail,),
                        Row(
                          children: [
                            AppText(itmcount,style: th.bodySmall?.copyWith
                              (fontWeight: FontWeight.w400),textColor: textLabelColor,),
                            SizedBox(width: 5,),
                            AppText(itmprice,style: th.bodySmall?.copyWith
                              (fontWeight: FontWeight.w500),textColor: reviewdetail,),
                          ],
                        ),
                        SizedBox(height: 4,),
                      ],
                    ),
                  ),
                  Container(
                        child: GestureDetector(
                          onTap: ontooltippress,
                          child: Container(
                            child: Icon(Icons.info_outline,size: 13,),
                          ),
                        ),
                      ),
                  SizedBox(height: 8,),

                  // SizedBox(height: 8,),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: GestureDetector(
                      onTap: onpressed,
                      child: Row(
                        children: [

                          AppText('Instruction',style: th.bodySmall?.copyWith
                            (fontWeight: FontWeight.w400),
                            textColor:textLabelColor ,),
                          // SizedBox(width: 5,),
                          Icon(Icons.keyboard_arrow_right_outlined,size: 14,
                            color: textLabelColor,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: status_cooking_bg,
                      border: Border.all(
                        color: color_b!,
                      )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(iconlink!),
                        SizedBox(width: 3,),
                        AppText(status!,style: th.labelSmall,textColor: color_b!,),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
