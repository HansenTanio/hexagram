import 'package:flutter/material.dart';

class MySwitch extends StatelessWidget {
  final String switchText;
  final bool switchValue;
  final switchFunc;
  const MySwitch({
    super.key,
    required this.switchText,
    required this.switchValue,
    required this.switchFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            switchText,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Switch(value: switchValue, onChanged: switchFunc)
        ],
      ),
    );
  }
}
