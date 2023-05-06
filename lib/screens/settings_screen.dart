import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexagram/initial_screens/initial_screen.dart';

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
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
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
          Container(
            margin: const EdgeInsets.only(left: 80),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'White Mode',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Dark Mode',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 40,
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
          Container(
            margin: const EdgeInsets.only(left: 80),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Jeda Notifikasi',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 40,
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
          Container(
            margin: const EdgeInsets.only(left: 80),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Akun Privat',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset('lib/images/icons/info.png'),
              ),
              Text(
                'Help',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset('lib/images/icons/question.png'),
              ),
              Text(
                'About',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InitialScreen(),
                ),
              );
            },
            child: Text(
              'Log out',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
