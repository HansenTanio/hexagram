import 'package:flutter/material.dart';
import 'package:hexagram/components/my_button.dart';
import 'package:hexagram/components/my_textfield.dart';
import 'package:hexagram/initial_screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  void userSignUp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  bool? checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Sign Up",
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
              height: 50,
            ),
            Image.asset(
              "lib/images/hexagram.png",
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
              height: 20,
            ),
            MyTextField(
              controller: confirmController,
              hintText: 'Confirm Password',
              obsecureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              onTap: userSignUp,
              buttonText: 'Sign Up',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Login',
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
