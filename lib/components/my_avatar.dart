import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  final String imagePath;
  final String userName;

  const MyAvatar({
    super.key,
    required this.imagePath,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://img.freepik.com/premium-vector/vertical-background-with-smooth-gradient-vector-illustration_522680-306.jpg',
            ),
            radius: 40,
            child: CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 35,
            ),
          ),
          Text(userName, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
