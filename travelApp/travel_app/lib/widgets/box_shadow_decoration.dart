import 'package:flutter/material.dart';

class BoxShadowDecoration extends StatelessWidget {
  final Color? color;
  
  const BoxShadowDecoration({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
    );
  }
}
