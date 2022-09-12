import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain_trips/misc/colors.dart';
import 'package:mountain_trips/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({
    Key? key,
    this.isResponsive,
    this.width = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceAround
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? AppText(text: "Book Trip Now", color: Colors.white)
                : Container(),
            Image.asset(
              "assets/images/button-one.png",
            ),
          ],
        ),
      ),
    );
  }
}
