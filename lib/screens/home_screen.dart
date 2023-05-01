import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String testitle;
  const HomeScreen({super.key, required this.testitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(testitle),
    );
    // Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     elevation: 0,
    //     title: Image.asset(
    //       "lib/images/hexagram.png",
    //       height: 50,
    //     ),
    //     iconTheme: IconThemeData(
    //       color: Colors.black,
    //     ),
    //   ),
    //   body: SingleChildScrollView(
    //       child: Center(
    //     child: Column(
    //       children: [
    //         Text('Home Page'),
    //       ],
    //     ),
    //   )),
    // );
  }
}
