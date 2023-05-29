import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';

class VerticalContainerWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  const VerticalContainerWidget({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;

    return Container(
      width: 64.83,
      height: 114,
      decoration: BoxDecoration(
        color: containerborder, // Fill color: #E6DEDC
        borderRadius: BorderRadius.circular(39), // Radius: 39px
        border: Border.all(
          color: containerbg, // Stroke color: #E8C2B8
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 3),
          Image.asset(
            imagePath,
          ),
          SizedBox(height: 3),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 8, left: 8),
                child: Text(
                  text,
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: appColorBlack,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalContainerWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  const HorizontalContainerWidget({
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context).textTheme;
    return Container(
      width: 100,
      height: 45,
      decoration: BoxDecoration(
        color: containerborder, // Fill color: #E6DEDC
        borderRadius: BorderRadius.circular(39), // Radius: 39px
        border: Border.all(
          color: containerbg, // Stroke color: #E8C2B8
          width: 1,
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 3),
          Image.asset(
            imagePath,
            height: 41,
            width: 41,
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 12.0, right: 12, left: 4, top: 12),
                child: Text(
                  text,
                  style: th.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: appColorBlack,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
