import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

class AddPopUp extends StatefulWidget {
  final VoidCallback ? onPressed;
  final bool type;
  const AddPopUp({ this.onPressed,required this.type,
        Key? key
      }) : super(key: key);
  @override
  _AddPopUp createState() => _AddPopUp();
}

class _AddPopUp extends State<AddPopUp> {
  late String type;
  late String instruction;
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController1 = TextEditingController();
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
                    widget.type ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText("Add Instruction",style: th.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),textColor: reviewdetail,),
                        InkWell(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.cancel_outlined))
                      ],
                    ):SizedBox.shrink(),
                    SizedBox(height: 5,),
                    widget.type?Container(
                      width: 400,
                      height: 1,
                      color: Color(0xffEDF5F9),
                    ):SizedBox.shrink(),
                    widget.type?SizedBox(height: 16):SizedBox.shrink(),
                    widget.type?Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: appColorGrey,
                              ),

                              child: Center(
                                child: AppText("More Spice",style: th.bodySmall?.copyWith(
                                  fontSize: 8,fontWeight: FontWeight.w500
                                ),textColor: reviewdetail,),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appColorGrey,
                            ),
                            child: Center(
                              child: AppText("Add extra olives",style: th.bodySmall?.copyWith(
                                fontSize: 8,fontWeight: FontWeight.w500
                              ),textColor: reviewdetail,),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appColorGrey,
                            ),
                            child: Center(
                              child: AppText("No onionext",style: th.bodySmall?.copyWith(
                                fontSize: 8,fontWeight: FontWeight.w500
                              ),textColor: reviewdetail,),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appColorGrey,
                            ),
                            child: Center(
                              child: AppText("Extra Spice",style: th.bodySmall?.copyWith(
                                fontSize: 8,fontWeight: FontWeight.w500
                              ),textColor: reviewdetail,),
                            ),
                          ),
                        ),
                      ],
                    ):SizedBox.shrink(),
                    widget.type?SizedBox(height: 16):SizedBox.shrink(),
                    AppText("Enter Instructions",style: th.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500
                    ),textColor: reviewdetail,),
                    SizedBox(height: 10),
                    Container(
                      // padding: EdgeInsets.symmetric( vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color:  Color(0xffBFD1E3)
                        ),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            controller: _textEditingController,
                            maxLines: 5,
                            maxLength: 100,
                            decoration: InputDecoration(
                              hintText: 'Enter your feedback',
                              border: InputBorder.none,

                              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
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
