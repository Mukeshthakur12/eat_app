import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

class OrderStatusWithImg extends StatefulWidget {
  final String uname;
  final String uimage;
  final String itmsize;
  final String itminfo;
  final String itmcount;
  final String itmprice;
  final String ? status;
  final String ? iconlink;
  final Color ? color_b;
  final VoidCallback ? onpressed;
  final VoidCallback ? ontooltippress;

  const OrderStatusWithImg(
      this.uname, {required this.uimage,required this.itmsize, required this.itminfo,
        required this.itmcount,
        required this.itmprice,this.onpressed,this.status='Cooking',
        this.iconlink='assets/Offer/cooking.svg',
        this.color_b=status_cooking,this.ontooltippress,
        Key? key
      }) : super(key: key);
  const OrderStatusWithImg.ordered(
      this.uname, {required this.uimage, required this.itmsize,required this.itminfo, required this.itmcount,
        required this.itmprice,this.onpressed,this.status='Ordered',
        this.iconlink='assets/Offer/oredered.svg',
        this.color_b=successColor,this.ontooltippress,
        Key? key
      }) : super(key: key);
  const OrderStatusWithImg.served(
      this.uname, {required this.uimage, required this.itmsize,required this.itminfo, required this.itmcount,
        required this.itmprice,this.onpressed,this.status='Served',
        this.iconlink='assets/Offer/served.svg',
        this.color_b=serveddcolor,this.ontooltippress,
        Key? key
      }) : super(key: key);
  @override
  State<OrderStatusWithImg> createState() => _OrderStatusWithImg();
}

class _OrderStatusWithImg extends State<OrderStatusWithImg> {
  bool showtext=false;
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
                      child: Image.asset(widget.uimage),
                    ),
                  ),
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
                            AppText(widget.uname,style: th.bodyMedium?.copyWith
                              (fontWeight: FontWeight.w700),textColor: username,),
                          ],
                        ),
                        AppText(widget.itmsize,style: th.bodySmall?.copyWith
                          (fontWeight: FontWeight.w500),textColor: reviewdetail,),
                        AppText(widget.itminfo,style: th.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),textColor: textLabelColor,),
                        Row(
                          children: [
                            AppText(widget.itmcount,style: th.bodySmall?.copyWith
                              (fontWeight: FontWeight.w400),textColor: textLabelColor,),
                            SizedBox(width: 5,),
                            AppText(widget.itmprice,style: th.bodySmall?.copyWith
                              (fontWeight: FontWeight.w500),textColor: reviewdetail,),
                          ],
                        ),
                        SizedBox(height: 4,),
                      ],
                    ),
                  ),
                  showtext?AppText("#220723-01233-01 ",style: th.bodySmall?.copyWith(
                      fontSize:10),):SizedBox.shrink(),
                  Container(
                    child: GestureDetector(
                      onTap: (){
                        if(showtext!=true){
                          setState(() {
                            showtext=true;
                          });}
                        else{
                          setState(() {
                            showtext=false;
                          });
                        }

                      },
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: widget.onpressed,
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
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: status_cooking_bg,
                        border: Border.all(
                          color: widget.color_b!,
                        )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(widget.iconlink!),
                        SizedBox(width: 3,),
                        AppText(widget.status!,style: th.labelSmall,textColor: widget.color_b!,),
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
