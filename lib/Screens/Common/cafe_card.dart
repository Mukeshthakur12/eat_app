import 'package:flutter/material.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/CustomWidgets/apppadding.dart';
import 'package:untitled1/Utils/app_colors.dart';

class CafeCard extends StatelessWidget {
  final String uname;
  final String ? uimage;
  final String itmsize;
  final String itminfo;
  final String itmcount;
  final String itmprice;
  final VoidCallback ? onpressed;

  const CafeCard(
      this.uname, { this.uimage,required this.itmsize,
        required this.itminfo,required this.itmcount,
        required this.itmprice,this.onpressed,
        Key? key
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Card(
        child:AppPadding.a2(
         child: Column(
           children: [
             Stack(
               children: <Widget>[
                 Container(
                   child: Image.asset('name'),
                 )
               ],
             ),
           ],
         ),
        )
    );
  }
}
