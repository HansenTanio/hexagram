import 'package:flutter/material.dart';
import 'package:hexagram/components/my_avatar.dart';

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
          child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MyAvatar(
                  userName: 'Hansen',
                  imageLink:
                      'https://instagram.fkno4-1.fna.fbcdn.net/v/t51.2885-19/337861791_210298631694077_2635489641542819489_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fkno4-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=STDkou2hLaMAX-mhX-X&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBh8dPnSpu_xvk3QxRK0pPtl50EXoKI90Ll74dyXaRIkg&oe=6454C8C6&_nc_sid=8fd12b',
                ),
                MyAvatar(
                  userName: 'Louis',
                  imageLink:
                      'https://instagram.fkno4-1.fna.fbcdn.net/v/t51.2885-19/222049441_702333474448960_6152411283523384502_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fkno4-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=CLeLD51oUu4AX-_pbca&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCqCtZec7HQ2OiLohuYrhSA1TlR_X2ZI4fHEG7k-lNFrw&oe=645414D1&_nc_sid=8fd12b',
                ),
                MyAvatar(
                  userName: 'Michael',
                  imageLink:
                      'https://instagram.fkno4-1.fna.fbcdn.net/v/t51.2885-19/334705956_1738061126652463_1999795861026054169_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fkno4-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=Q2jzqnzGFM4AX_dr8b-&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCt0gYxUQUcweCG8AL4aDWD1xpARl24k2Sn8tRN_T7STw&oe=64550390&_nc_sid=8fd12b',
                ),
              ],
            ),
            Text('Card Postingan')
          ],
        ),
      )),
    );
  }
}
