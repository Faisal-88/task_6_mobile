import 'package:flutter/material.dart';
import 'package:flutter_task_6/Login/login_screen.dart';
import 'package:flutter_task_6/Register/register_screen.dart';

class OnboardingScreen extends StatelessWidget {
      OnboardingScreen({super.key});
  final List<String> descriptions = ["Invest in your youthful face"];
  final List<String> images = ["assets/images/logo.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OnboardingPage(
                  description: descriptions[0],
                  imageAsset: images[0],
                ),
              ],
            ),
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
            onPressed: () {
              Navigator.push(
                context, 
              MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
            color: Colors.green,
            textColor: Colors.white,
            minWidth: 250,
            height: 45,
            child: const Text("Sign In"),
          ),
          const SizedBox(height: 20),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (_) => const RegisterScreen()));
            },
            minWidth: 250,
            height: 45,
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text("Sign Up"),
          ),
          const SizedBox(height: 60,)
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String description;
  final String imageAsset;

  const OnboardingPage({super.key, 
    required this.description,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageAsset,
          height: 100,
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
