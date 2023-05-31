import 'package:barcode_scan2/platform_wrapper.dart';
// import 'package:barcode_scan_fix2/barcode_scan.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled1/CustomWidgets/app_text.dart';
import 'package:untitled1/Screens/Common/empty_scafold.dart';
import 'package:untitled1/Utils/app_colors.dart';
import 'package:untitled1/Utils/helper.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../CustomWidgets/alaetsnackbar.dart';
import '../../CustomWidgets/apppadding.dart';
import '../../CustomWidgets/custom_button_widget.dart';
import '../Order/Review/order_review.dart';
import '../Order/current_order.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQRfailed extends StatefulWidget {
  @override

  _ScanQRfailed createState() => _ScanQRfailed();
}

class _ScanQRfailed extends State<ScanQRfailed> {

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  bool isCameraPermissionGranted = false;

  @override
  void initState() {
    super.initState();
    checkCameraPermission();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  TextEditingController otpController = TextEditingController();

  Future<void> checkCameraPermission() async {
    final status = await Permission.camera.status;
    if (status.isGranted) {
      setState(() {
        isCameraPermissionGranted = true;
      });
    } else if (status.isDenied) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Camera Permission Required'),
          content: Text('Please grant camera permission in order to use the QR scanner.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
                openAppSettings();
              },
            ),
          ],
        ),
      );
    } else {
      final result = await Permission.camera.request();
      if (result.isGranted) {
        setState(() {
          isCameraPermissionGranted = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return EmptyScafold(
      title: 'Scan Table QR',
      child: Container(
        //padding: EdgeInsets.all(20),
          child: Column(
            children: [
              alertSnackbar(
                text: 'QR Code is not active',
              ),
              Helper.verticalSpacing(),
              Helper.verticalSpacing(),
              Expanded(
                child: Stack(
                  children: [
                    QRView(
                      key: qrKey,
                      onQRViewCreated: _onQRViewCreated,
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                color: Colors.white,
                child: AppPadding.a(
                  child: Center(
                    child: Column(

                      children: [
                        AppText(
                          "Enter A2D Eats Unique QR No.",style: th.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),textColor: reviewdetail,
                        ),
                        Helper.verticalSpacing(),
                        Helper.verticalSpacing(),

                        Container(
                          //width: 335,
                          height: 43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Color(0xffbfd1e3), width: 0.50, ),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18, ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                            ],
                          ),
                        ),
                        Helper.verticalSpacing(),
                        Helper.verticalSpacing(),
                        InkWell(
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
                      ],
                    ),

                  ),
                ),
              ),

            ],
          )
        /*child: Column(
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
        ),*/
      ),
    );
  }
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      // Handle the scanned QR code data here
      print('Scanned Data: ${scanData.code}');
    });
  }
}