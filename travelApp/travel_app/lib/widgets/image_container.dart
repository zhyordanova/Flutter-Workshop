import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final AssetImage imageUrl;

  const ImageContainer({
    Key? key,
    this.height = 180,
    this.width,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        height: height,
        width: width,
        image: imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
