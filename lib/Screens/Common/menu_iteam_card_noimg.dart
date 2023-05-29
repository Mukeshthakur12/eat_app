import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

class MenuIteamNoImage extends StatelessWidget {
  final String uname;
  final String itmsize;
  final String itmcount;
  final String itmprice;
  final VoidCallback ? onpressed;

  const MenuIteamNoImage(
      this.uname, { required this.itmsize,required this.itmcount,
        required this.itmprice,this.onpressed,
        Key? key
      }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Card(
        child:AppPadding.a2(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(width: 8,),
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
                    GestureDetector(
                      onTap: onpressed,
                      child: Row(
                        children: [
                          Icon(Icons.add,size: 14,color: successColor,),
                          SizedBox(width: 5,),
                          AppText('Add Instruction',style: th.bodySmall?.copyWith
                            (fontWeight: FontWeight.w600),
                            textColor:successColor ,),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Container(
                    child: GestureDetector(
                      onTap: onpressed,
                      child: Container(
                        child: Icon(Icons.info_outline,size: 13,),
                      ),
                    ),
                  ),
              SizedBox(height: 8,),

              // SizedBox(height: 8,),
            ],
          ),
        )
    );
  }
}
