import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';
import 'package:untitled1/Utils/helper.dart';

class InstructionPopup extends StatefulWidget {

  const InstructionPopup({ Key? key
  }) : super(key: key);
  @override
  _InstructionPopup createState() => _InstructionPopup();
}

class _InstructionPopup extends State<InstructionPopup> {
 @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: Color(0xffFFFFFF),
      child: Container(
        color: containercolor,
        // elevation: 0,
        // margin: EdgeInsets.all(8),
        child: AppPadding.a2(
          child: Container(
            padding: EdgeInsets.only(left: 8,right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Helper.verticalSpacing(),
                Helper.verticalSpacing(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText("Instructions",style: th.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700
                    ),textColor: reviewdetail,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.cancel_outlined)),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  height: 1,
                  color: Color(0xffEDF5F9),
                ),
                Container(
                  child: AppPadding.y2(
                    child: AppText('Lorem ipsum dolor sit amet,'
                          ' consectetur adipiscing elit, sed do eiusmod tempor'
                          ' incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                          'incididunt ut labore et dolore magna'
                          ' aliqua.',style: th.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500
                      ),textColor: reviewdetail,),

                  ),
                ),
              ],
            ),

          ),
        ),
      ),


    );
  }
}
