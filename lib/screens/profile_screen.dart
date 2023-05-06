import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Profile',
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
                Icons.favorite_border,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('lib/images/profile/Hansen Profile.jpg'),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hansen Tanio',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '@hansentanio33',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
