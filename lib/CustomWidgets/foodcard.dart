import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screens/Common/menupopu.dart';
import '../Utils/app_colors.dart';
import '../Utils/helper.dart';
import 'app_text.dart';
import 'custom_button_widget.dart';

class foodCard extends StatelessWidget {
  final Widget image1;
  final Widget image2;
  final String count;
  final String title;
  final String description;
  final String price;

  const foodCard({
    required this.image1,
    required this.image2,
    required this.count,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              image1,
                              SizedBox(width: 4),
                              image2,
                              SizedBox(width: 4),
                              AppText(
                                count,
                                style: th.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                ),
                                textColor: appColorBlack,
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText(
                                title,
                                style: th.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                textColor: appColorBlack,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: CustomButtonWidget(
                            width: 76,
                            height: 24,
                            fontSize: 12,
                            //fontWeight: w600,
                            backgroundColor: appbuttonfill,
                            borderColor: appbuttonBorder,
                            padding: EdgeInsets.all(4.0),
                            onTap: ()=>myFunction(context),
                            title: 'Add',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AppText(
                          description,
                          style: th.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                          textColor: appColorBlack,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText(
                        price,
                        style: th.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                        textColor: appColorBlack,
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
        Helper.verticalSpacing(),
        Divider(
          height: 1,
          thickness: 1,
          color: Color(0xffF1F1F1),
        ),
      ],
    );
  }
  void myFunction(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 500,
            child: MenuPopup(type: true,),
          ),
        );
      },
    );
  }
}
