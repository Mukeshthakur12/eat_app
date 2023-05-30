import 'package:flutter/cupertino.dart';
import 'package:untitled1/CustomWidgets/user_feedback.dart';

class CafeReview extends StatelessWidget {
  const CafeReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            UserFeedback('Jane Copper ', uimage: 'assets/Offer/profile.png',
                urating: '4.5', ureview: 'The place is very beautiful exactly as shown in the pictures. The property is secluded away from the hustle of Kasol main market area. Amazing view from the property. ',
                dateofreview: '20-04-2022'),
            UserFeedback('Jane Copper ', uimage: 'assets/Offer/profile.png',
                urating: '4.5', ureview: 'The place is very beautiful exactly as shown in the pictures. The property is secluded away from the hustle of Kasol main market area. Amazing view from the property. ',
                dateofreview: '20-04-2022'),
            UserFeedback('Jane Copper ', uimage: 'assets/Offer/profile.png',
                urating: '4.5', ureview: 'The place is very beautiful exactly as shown in the pictures. The property is secluded away from the hustle of Kasol main market area. Amazing view from the property. ',
                dateofreview: '20-04-2022'),
            UserFeedback('Jane Copper ', uimage: 'assets/Offer/profile.png',
                urating: '4.5', ureview: 'The place is very beautiful exactly as shown in the pictures. The property is secluded away from the hustle of Kasol main market area. Amazing view from the property. ',
                dateofreview: '20-04-2022'),
          ],
        ));
  }
}
