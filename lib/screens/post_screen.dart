import 'package:flutter/material.dart';
import 'package:hexagram/components/my_textfield.dart';

class PostScreen extends StatelessWidget {
  final descriptionController = TextEditingController();
  PostScreen({super.key});

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
      body: Column(
        children: [
          Container(
            height: 300,
            child: Image.asset('lib/images/random-photos/10.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          MyTextField(
            controller: descriptionController,
            hintText: 'Add a Description',
            obsecureText: false,
          ),
        ],
      ),
    );
  }
}
