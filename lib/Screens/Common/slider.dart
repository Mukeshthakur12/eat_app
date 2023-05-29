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
      initialPage: 2,
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
        child:PageIndicatorContainer(
          key: key,
          child: PageView.builder(
            itemBuilder: (BuildContext context, int index) {
              final screenWidth = MediaQuery.of(context).size.width;
              final cardWidth = screenWidth * 0.8;
              final horizontalPadding = (screenWidth - cardWidth) / 2;

              return Container(
                padding: EdgeInsets.only(bottom: 10,left: 5),
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
          align: IndicatorAlign.bottom,
          length: 4,
          indicatorSelectorColor:Color(0xff832A0E) ,
          indicatorColor: Color(0xffB9C9DC),
          indicatorSpace: 10.0,
        ),

      );
  }
}