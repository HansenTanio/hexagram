import 'package:flutter/material.dart';

class MySearchPhoto extends StatelessWidget {
  final String imageLink;

  const MySearchPhoto({
    super.key,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: FittedBox(
        child: Image.asset(imageLink),
        fit: BoxFit.fill,
      ),
    );
  }
}
