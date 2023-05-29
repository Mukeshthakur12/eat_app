import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';


class BaseAppScaffold extends StatelessWidget {
  final Widget child;
  const BaseAppScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                offset: Offset(0, 52), // changes position of shadow
              ),
            ],
          ),
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
                          flex:3,
                          child: ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: [Color(0xF5E3225), Color(0xff832A0E)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ).createShader(bounds);
                            },
                            child: AppText("eats",style: th.titleLarge?.copyWith(
                                fontWeight: FontWeight.w800,
                            ),),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: SvgPicture.
                            asset('assets/AppBar/qr_logo.svg',
                              height: 46,width: 46,)),
                        Expanded(
                            flex: 1,
                            child: Icon(Icons.person,size: 46,)),
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
