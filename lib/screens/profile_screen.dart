import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexagram/components/my_previewphoto.dart';
import 'package:hexagram/provider/account_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<AccountProvider>(context);
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
        automaticallyImplyLeading: false,
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
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(prov.data['data']['profil']),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    prov.data['data']['nama'],
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '@${prov.data['data']['username']}',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Photos',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '315',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        (Random().nextInt(700) + 200).toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Follows',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        (Random().nextInt(500) + 200).toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        'Photos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Video',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Tagged',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            photoList(context)
            // Row(
            //   children: [
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/1.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/25.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/48.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/11.jpg'),
            //   ],
            // ),
            // Row(
            //   children: [
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/4.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/19.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/9.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/18.jpg'),
            //   ],
            // ),
            // Row(
            //   children: [
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/22.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/33.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/32.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/27.jpg'),
            //   ],
            // ),
            // Row(
            //   children: [
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/37.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/43.jpg'),
            //     MySearchPhoto(imageLink: 'lib/images/random-photos/47.jpg'),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

photoList(BuildContext context) {
  final prov = Provider.of<AccountProvider>(context);
  if (prov.data == null) {
    return Center(child: const Text('Tidak ada Data'));
  } else {
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: List.generate(
            prov.data['data']['photo']!.length,
            (index) {
              var item = prov.data['data']['photo']![index];
              print(item);
              return Center(
                  child: Row(
                children: [
                  MySearchPhoto(
                    imageLink: item,
                  ),
                ],
              ));
            },
          ),
        ),
      ],
    );
  }
}
