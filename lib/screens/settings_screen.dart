import 'package:flutter/material.dart';
import 'package:hexagram/components/my_switch.dart';
import 'package:hexagram/initial_screens/initial_screen.dart';
import 'package:hexagram/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool switch03 = false;
  bool switch04 = false;

  // void toggleSwitch01(bool value) {
  //   setState(() {
  //     switch01 = !switch01;
  //     switch02 = false;
  //   });
  // }

  // void toggleSwitch02(bool value) {
  //   setState(() {
  //     switch02 = !switch02;
  //     switch01 = false;
  //   });
  // }

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

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ThemeProvider>(context);
    String theme = prov.enableDarkMode ? "Dark_Mode" : "Light_Mode";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: prov.enableDarkMode ? null : Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
              color: prov.enableDarkMode ? null : Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: prov.enableDarkMode ? null : Colors.black,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child:
                      Image.asset('lib/images/icons/${theme}/paintbrush.png'),
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
                      const Text('Dark Mode Theme'),
                      Switch(
                        value: prov.enableDarkMode,
                        onChanged: (val) {
                          prov.setBrightness = val;
                        },
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
                  child:
                      Image.asset('lib/images/icons/${theme}/notification.png'),
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
                      MySwitch(
                        switchText: 'Jeda Notifikasi',
                        switchFunc: toggleSwitch03,
                        switchValue: switch03,
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
                  child: Image.asset('lib/images/icons/${theme}/padlock.png'),
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
                      MySwitch(
                        switchText: 'Akun Privat',
                        switchFunc: toggleSwitch04,
                        switchValue: switch04,
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
                  child: Image.asset('lib/images/icons/${theme}/info.png'),
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
                  child: Image.asset('lib/images/icons/${theme}/question.png'),
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
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
