import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Utils/app_colors.dart';


class EmptyScafold extends StatelessWidget {
  final String? title;
  final Widget child;
  const EmptyScafold({Key? key,this.title, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/AppBar/back_button.svg'),
                  onPressed: () {
                    Navigator.pop(context); // Pop the current route and go back
                  },
                ),
                Container(
                    height: 45,
                    // padding: EdgeInsets.only(top: 4),
                    // padding: EdgeInsets.all(9.0),
                    child: Center(
                      child:Row(
                        children: [
                          AppText("Your Order ",style: th.bodySmall
                              ?.copyWith(fontWeight: FontWeight.w600),
                            textColor: reviewdetail,),
                          AppText(title!,style: th.bodySmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                            textColor: reviewdetail,),
                        ],

                      )
                    ),
                  ),

              ],
            ),
          )
      ),
      body: Column(
        children: [
          Expanded(
            child: child,
          )
        ],
      ),
    );
  }
}
