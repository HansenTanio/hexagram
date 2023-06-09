import 'package:flutter/material.dart';
import 'package:hexagram/initial_screens/login_screen.dart';
import 'package:hexagram/initial_screens/signup_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "lib/images/Let's Connect Together.png",
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Let\'s Connect Together',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100), // <-- Radius
                ),
              ),
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
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: ElevatedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100), // <-- Radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      )),
    );
  }
}
