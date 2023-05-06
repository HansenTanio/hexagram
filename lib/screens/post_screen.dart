import 'package:flutter/material.dart';
import 'package:hexagram/components/my_switch.dart';
import 'package:hexagram/components/my_textfield.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final descriptionController = TextEditingController();

  bool switch01 = false;
  bool switch02 = false;
  bool switch03 = false;
  bool switch04 = false;
  bool switch05 = false;

  void toggleSwitch01(bool value) {
    setState(() {
      switch01 = !switch01;
    });
  }

  void toggleSwitch02(bool value) {
    setState(() {
      switch02 = !switch02;
    });
  }

  void toggleSwitch03(bool value) {
    setState(() {
      switch03 = !switch03;
    });
  }

  void toggleSwitch04(bool value) {
    setState(() {
      switch04 = !switch04;
    });
  }

  void toggleSwitch05(bool value) {
    setState(() {
      switch05 = !switch05;
    });
  }

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
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            child: Image.asset('lib/images/random-photos/10.jpg'),
          ),
          MyTextField(
            controller: descriptionController,
            hintText: 'Add a Description',
            obsecureText: false,
          ),
          MySwitch(
            switchText: 'Nonaktifkan Komentar',
            switchFunc: toggleSwitch01,
            switchValue: switch01,
          ),
          MySwitch(
            switchText: 'Sembunyikan Jumlah Suka',
            switchFunc: toggleSwitch02,
            switchValue: switch02,
          ),
          MySwitch(
            switchText: 'Bagikan ke Whatsapp',
            switchFunc: toggleSwitch03,
            switchValue: switch03,
          ),
          MySwitch(
            switchText: 'Bagikan ke Facebook',
            switchFunc: toggleSwitch04,
            switchValue: switch04,
          ),
        ],
      ),
    );
  }
}
