import 'package:flutter/material.dart';
import 'package:hexagram/components/my_avatar.dart';
import 'package:hexagram/components/my_card.dart';
import 'package:hexagram/provider/theme_provider.dart';
import 'package:hexagram/provider/card_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<CardProvider>(context, listen: false).initialData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ThemeProvider>(context);
    String theme = prov.enableDarkMode ? 'dark' : 'light';
    final cardProv = Provider.of<CardProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: prov.enableDarkMode ? null : Colors.white,
        title: Image.asset(
          "lib/images/${theme}_hexagram.png",
          height: 50,
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
                  userName: 'Victor',
                  imagePath: 'lib/images/profile/Victor Profile.jpg',
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
              theme: prov.enableDarkMode,
            ),
            MyCard(
              accountName: 'New Jeans',
              account: '@newjeans_official',
              profileImage: 'lib/images/profile/New Jeans Profile.jpg',
              postImage: 'lib/images/random-photos/29.jpg',
              postTime: '35 min ago',
              postDesc: 'NewJeans \'Zero\' Available Now',
              theme: prov.enableDarkMode,
            ),
            MyCard(
              accountName: 'Toshiro Nishio',
              account: '@libertywalk_toshi',
              profileImage: 'lib/images/profile/Libertywalk Toshi Profile.jpg',
              postImage: 'lib/images/random-photos/13.jpg',
              postTime: '50 min ago',
              postDesc: 'LB WORKS Ferrari F40 in Japan',
              theme: prov.enableDarkMode,
            ),
            MyCard(
              accountName: 'Kitsune',
              account: '@kitsunee.__',
              profileImage: 'lib/images/profile/Kitsune Profile.jpg',
              postImage: 'lib/images/random-photos/14.jpg',
              postTime: '1 hour ago',
              postDesc: '#Kitsune',
              theme: prov.enableDarkMode,
            ),
            MyCard(
              accountName: 'JISOO',
              account: '@sooyaaa__',
              profileImage: 'lib/images/profile/Jisoo Profile.jpg',
              postImage: 'lib/images/random-photos/7.jpg',
              postTime: '2 hours ago',
              postDesc: '久しぶりに日本でBLINKに会えて幸せでした！',
              theme: prov.enableDarkMode,
            ),
            cardList(context, prov.enableDarkMode)
          ],
        ),
      ),
    );
  }
}

cardList(BuildContext context, bool theme) {
  final cardProv = Provider.of<CardProvider>(context);
  if (cardProv.data == null) {
    return Center(child: const Text('Tidak ada Data'));
  } else {
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: List.generate(
            cardProv.card['data']!.length,
            (index) {
              var item = cardProv.card['data']![index];
              return Center(
                child: MyCard(
                  profileImage: item['profileImage'].toString(),
                  accountName: item['accountName'].toString(),
                  account: item['account'].toString(),
                  postImage: item['postImage'].toString(),
                  postTime: item['postTime'].toString(),
                  postDesc: item['postDesc'].toString(),
                  theme: theme,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
