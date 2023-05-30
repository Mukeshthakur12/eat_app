import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

import '../../Utils/helper.dart';

class MenuPopup extends StatefulWidget {
  final VoidCallback ? onPressed;
  final bool type;
  const MenuPopup({ this.onPressed,required this.type,
    Key? key
  }) : super(key: key);
  @override
  _MenuPopup createState() => _MenuPopup();
}

class _MenuPopup extends State<MenuPopup> {
  bool isChecked = false;
  late String type;
  late String instruction;
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return  textLabelColor;
      }
      return appPrimaryColor;
    }
    var th = Theme.of(context).textTheme;
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),

      ),
      backgroundColor: appColorWhite,
      child: Card(
        elevation: 0,
        // margin: EdgeInsets.all(8),
        child: AppPadding.a2(
          child: Container(
            padding: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.type ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText("Margherita Pizza",style: th.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                      textColor: reviewdetail,),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.cancel_outlined))
                  ],
                ):SizedBox.shrink(),
                SizedBox(height:16),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xffF1F1F1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText("Customisation",style: th.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                      textColor: reviewdetail,),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Radio<bool>(
                              value: true,
                              groupValue: false,
                              fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return appPrimaryColor; // Fill color when selected
                                }
                                return textLabelColor; // Fill color when not selected
                              }),                              onChanged: (bool? value) {
                                // Add your logic here
                              },
                            ),

                            Expanded(
                              child: AppText("Item $index",style: th.labelMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                                textColor: appColorBlack,),
                            ),
                            AppText("₹20",style: th.labelMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                              textColor: appColorBlack,),
                          ],
                        );
                      },
                    ),
                    AppText("Addons",style: th.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                      textColor: reviewdetail,),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return appPrimaryColor; // Fill color when selected
                                }
                                return textLabelColor; // Fill color when not selected
                              }),
                              value: false,
                              onChanged: (bool? value) {
                              },
                            ),
                            Expanded(
                              child: AppText("Item $index",style: th.labelMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                              textColor: appColorBlack,),
                            ),
                            AppText("₹20",style: th.labelMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                              textColor: appColorBlack,),
                          ],
                        );
                      },
                    ),
                  ],
                ),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText("Submit",style: th.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700
                          ),textColor: Colors.white,),
                          Icon(CupertinoIcons.arrow_right,size: 24,color: Colors.white,),
                        ],
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
