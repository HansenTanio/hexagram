import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset('lib/images/icons/paintbrush.png'),
              ),
              Text(
                'Theme',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset('lib/images/icons/notification.png'),
              ),
              Text(
                'Notification',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset('lib/images/icons/padlock.png'),
              ),
              Text(
                'Privacy',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
