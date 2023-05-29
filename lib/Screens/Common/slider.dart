import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';



class SliderInd extends StatefulWidget {
  SliderInd({Key? key}) : super(key: key);

  @override
  _SliderInd createState() => _SliderInd();
}

class _SliderInd extends State<SliderInd> {
  late PageController controller;

  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController(
      viewportFraction: .90,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child:PageView.builder(
          itemBuilder: (BuildContext context, int index) {
            // Calculate the card width based on the screen width
            final screenWidth = MediaQuery.of(context).size.width;
            final cardWidth = screenWidth * 0.8;

            // Calculate the horizontal padding to show a portion of the left and right images
            final horizontalPadding = (screenWidth - cardWidth) / 2;

            return Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Card(
                  child: Image.asset('assets/Offer/promo_img.jpg'),
                ),
              ),
            );
          },
          itemCount: 4,
          controller: controller,
          reverse: true,
          onPageChanged: (int index) {
            // Update the selected dot index here if needed
          },
        ),

      );
  }
}