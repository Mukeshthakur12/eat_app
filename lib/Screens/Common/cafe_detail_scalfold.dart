import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Utils/app_colors.dart';


class CafeDetail extends StatelessWidget {
  final Widget child;
  const CafeDetail({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: SvgPicture.asset('assets/AppBar/back_button.svg'),
          onPressed: () {
            Navigator.pop(context); // Pop the current route and go back
          },
        ),
        title: Container(
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey.withOpacity(0.5),
          //       blurRadius: 2,
          //       offset: Offset(0, 52), // changes position of shadow
          //     ),
          //   ],
          // ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex:4,
                            child: AppText("Cafe Detail",style: th.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w800,color: cafedetail,
                            ),),
                        ),
                        Expanded(
                            flex: 1,
                            child:SvgPicture.asset('assets/AppBar/share.svg')),
                      ],
                    ),
                    // AppText.grey('Login / Signup', style: th.labelSmall,)
                  ],
                ),
              ),

            ],
          ),
        ),
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
