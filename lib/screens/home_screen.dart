import 'package:flutter/material.dart';
import 'package:hexagram/components/my_avatar.dart';
import 'package:hexagram/components/my_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          "lib/images/hexagram.png",
          height: 50,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MyAvatar(
                  userName: 'Hansen',
                  imagePath: 'lib/images/profile/Hansen Profile.jpg',
                ),
                MyAvatar(
                  userName: 'Louis',
                  imagePath: 'lib/images/profile/Louis Profile.jpg',
                ),
                MyAvatar(
                  userName: 'Michael',
                  imagePath: 'lib/images/profile/Michael Profile.jpg',
                ),
              ],
            ),
            MyCard(
              accountName: 'Lisa',
              account: '@lalalalisa_m',
              profileImage: 'lib/images/profile/Lisa Profile.jpg',
              postImage: 'lib/images/random-photos/6.jpg',
              postTime: '20 min ago',
              postDesc: 'Birthday week',
            ),
            MyCard(
              accountName: 'New Jeans',
              account: '@newjeans_official',
              profileImage: 'lib/images/profile/New Jeans Profile.jpg',
              postImage: 'lib/images/random-photos/29.jpg',
              postTime: '35 min ago',
              postDesc: 'NewJeans \'Zero\' Available Now',
            ),
            MyCard(
              accountName: 'Toshiro Nishio',
              account: '@libertywalk_toshi',
              profileImage: 'lib/images/profile/Libertywalk Toshi Profile.jpg',
              postImage: 'lib/images/random-photos/13.jpg',
              postTime: '50 min ago',
              postDesc: 'LB WORKS Ferrari F40 in Japan',
            ),
            MyCard(
              accountName: 'Kitsune',
              account: '@kitsunee.__',
              profileImage: 'lib/images/profile/Kitsune Profile.jpg',
              postImage: 'lib/images/random-photos/14.jpg',
              postTime: '1 hour ago',
              postDesc: '#Kitsune',
            ),
            MyCard(
              accountName: 'JISOO',
              account: '@sooyaaa__',
              profileImage: 'lib/images/profile/Jisoo Profile.jpg',
              postImage: 'lib/images/random-photos/7.jpg',
              postTime: '2 hours ago',
              postDesc: '久しぶりに日本でBLINKに会えて幸せでした！',
            ),
          ],
        ),
      ),
    );
  }
}
