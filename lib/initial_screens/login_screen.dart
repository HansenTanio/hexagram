import 'package:flutter/material.dart';
import 'package:hexagram/components/my_button.dart';
import 'package:hexagram/components/my_textfield.dart';
import 'package:hexagram/initial_screens/signup_screen.dart';
import 'package:hexagram/provider/account_provider.dart';
import 'package:hexagram/responsive/layout_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<AccountProvider>(context, listen: false).initialData();
    });
    super.initState();
  }

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  bool? checkedValue = false;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<AccountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Image.asset(
              "lib/images/light_hexagram.png",
            ),
            SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obsecureText: false,
            ),
            SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obsecureText: true,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: checkedValue,
                    onChanged: (val) {
                      setState(() {
                        checkedValue = val;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              onTap: () {
                prov.login(usernameController.text, passwordController.text);
                if (prov.data == null) {
                  showDialog(
                    context: context,
                    builder: (context) => errorDialog(context),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LayoutScreen(),
                    ),
                  );
                }
              },
              buttonText: 'Login',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}

errorDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Login Error!'),
    content: const Text('Account not found'),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('OK'),
      )
    ],
  );
}
