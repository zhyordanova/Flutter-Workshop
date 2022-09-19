import 'package:flutter/material.dart';

import 'package:travel_app/widgets/app_bolded_text.dart';

class CarouselHeader extends StatelessWidget {
  final String text;

  const CarouselHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppBoldedText(
          size: 22,
          letterSpacing: 1.5,
          text: text,
        ),
        GestureDetector(
          onTap: () => print('See All'),
          child: AppBoldedText(
            text: 'See All',
            size: 16,
            color: Theme.of(context).primaryColor,
            weight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
