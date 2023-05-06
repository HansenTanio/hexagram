import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          size: 30,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'New Post',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.arrow_circle_right_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
