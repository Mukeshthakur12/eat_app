import 'package:barcode_scan2/platform_wrapper.dart';
// import 'package:barcode_scan_fix2/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Screens/Common/empty_scafold.dart';
import 'package:untitled1/Utils/app_colors.dart';
import 'package:untitled1/Utils/helper.dart';

import '../../CustomWidgets/apppadding.dart';
import '../../CustomWidgets/custom_button_widget.dart';
import '../Order/Review/order_review.dart';
import '../Order/current_order.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {

  String qrCodeResult = "00001-40621";

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return EmptyScafold(
      title: 'Scan Table QR',
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            AppText(
              "Enter A2D Eats Unique QR No.",style: th.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),textColor: reviewdetail,
            ),
            AppText(
              qrCodeResult,style: th.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),textColor: reviewdetail,
            ),
            SizedBox(
              height: 20.0,
            ),

            //Button to scan QR code
            ElevatedButton(
              // padding: EdgeInsets.all(15),
              onPressed: () async {
                String codeSanner = (await BarcodeScanner.scan()) as String; //barcode scanner
                setState(() {
                  qrCodeResult = codeSanner;
                });
              },
              child: Text("Open Scanner",style: TextStyle(color: Colors.indigo[900]),),
              //Button having rounded rectangle border

            ),
            Helper.verticalSpacing(30),
            Container(
              color: Colors.white,
              child: AppPadding(
                child: Center(
                  child: InkWell(
                    child: CustomButtonWidget(
                      height:52 ,
                      // width:176,
                      disabledColor: btndisable,
                      fontSize: 12,
                      padding: EdgeInsets.all(4.0),
                      backgroundColor: submitbtn,
                      fontColor: appColorWhite,
                      // borderWidth: 5,
                      //padding:8.0,
                      // onTap: null,
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: CurrentOrder(),
                          withNavBar: false,
                          pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Center(
                        child: AppPadding.x2(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 2,
                                child: AppText("Continue",style: th.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w700
                                ),textColor: Colors.white,),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Expanded(
                                  flex: 3,
                                  child: Icon(Icons.arrow_right_alt,
                                    size: 24,color: Colors.white,),
                              )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
