import 'package:flutter/material.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

class UserFeedback extends StatelessWidget {
  final String uname;
  final String uimage;
  final String urating;
  final String ureview;
  final String dateofreview;

  const UserFeedback(
      this.uname, {required this.uimage,required this.urating,required this.ureview,
        required this.dateofreview,
        Key? key
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Card(
      child:AppPadding.a2(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 42,
                    width: 52,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60), // Adjust the radius as needed
                      child: Image.asset(uimage), // Use the uimagePath directly
                    ),
                  ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(uname,style: th.bodyMedium?.copyWith
                        (color: username,
                      fontWeight: FontWeight.w700)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 5,),
                          Icon(Icons.star,size: 12,color: Color(0xffF9CA26),),
                          SizedBox(width: 5,),
                          Text(urating,style: th.bodySmall?.copyWith
                            (color: userrating,
                              fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex:3,
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(dateofreview))),
                // SizedBox(width: 20)
              ],
            ),
            SizedBox(height: 8,),
            AppText(ureview,style: th.bodySmall?.copyWith
              (color: reviewdetail,fontWeight: FontWeight.w400),),
            // SizedBox(height: 8,),
          ],
        ),
      )
    );
  }
}
