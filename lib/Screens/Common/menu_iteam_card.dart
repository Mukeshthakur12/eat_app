import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

import '../../Utils/helper.dart';

class MenuIteam extends StatelessWidget {
  final String uname;
  final String ? uimage;
  final String itmsize;
  final String itminfo;
  final String itmcount;
  final String itmprice;
  final String ? instruction;
  final bool isinst;
  final Color ? instructionclr;
  final VoidCallback ? onpressed;
  final VoidCallback ? ontooltippress;

  const MenuIteam(
      this.uname, { this.uimage,required this.itmsize,
        required this.itminfo,required this.itmcount,
        required this.itmprice,this.onpressed,this.ontooltippress,
        this.instruction='Add Instruction',this.instructionclr=successColor,required this.isinst,
        Key? key
      }) : super(key: key);
  const MenuIteam.withInstruction(
      this.uname, { this.uimage,required this.itmsize,
        required this.itminfo,required this.itmcount,
        required this.itmprice,this.onpressed,this.ontooltippress,
        this.instruction='Instruction',this.instructionclr=inputLabelColor,required this.isinst,
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
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 42,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset(uimage!),
                    ),
                  ),
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
                            AppText(itminfo,style: th.labelSmall?.copyWith(
                              fontWeight: FontWeight.w400,
                            ),textColor: textLabelColor,),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: onpressed,
                                  child: Row(
                                    children: [
                                      isinst?SizedBox.shrink():Icon(Icons.add,
                                        size: 14,color: successColor,),
                                      SizedBox(width: 5,),
                                      AppText(instruction!,style: th.bodySmall?.copyWith
                                        (fontWeight: FontWeight.w600),
                                      textColor:instructionclr,),
                                      isinst?Icon(Icons.keyboard_arrow_right_outlined,size: 14,
                                        color: textLabelColor,):SizedBox.shrink(),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: appbtnbg,
                                    border: Border.all(
                                      color: border,
                                    ),
                                    borderRadius: BorderRadius.circular(6)
                                  ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: onpressed,
                                            child: Icon(Icons.remove_rounded,size: 12,color: appPrimaryColor,)),
                                        AppText("1",style: th.bodySmall?.copyWith(
                                          fontWeight: FontWeight.w600
                                        ),textColor: appPrimaryColor,),
                                        Icon(Icons.add,size: 12,color: appPrimaryColor,),
                                      ],
                                    ),
                                  ),

                              ],
                            )

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
              Helper.verticalSpacing(15),
              Container(
                width: double.infinity,
                height: 1,
                color: Color(0xffF1F1F1),
              ),
            ],
          ),
        )
    );
  }
}
