import 'package:flutter/material.dart';
import 'package:flutter_task_6/menu_tab_bar.dart';
import 'package:flutter_task_6/Register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          focusColor: const Color.fromRGBO(130, 130, 130, 1),
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
            ),
            const SizedBox(
              height: 6,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextFormField(
                controller: email,
                validator: (val) {
                  return val!.isEmpty ? "tidak boleh kosong" : null;
                },
                decoration: InputDecoration(
                  hintText: "Email",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fillColor: const Color.fromRGBO(242, 242, 242, 1),
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextFormField(
                obscureText: true,
                controller: password,
                validator: (val) {
                  return val!.isEmpty ? "tidak boleh kosong" : null;
                },
                decoration: InputDecoration(
                  hintText: "Password",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(242, 242, 242, 1),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      // function icons password
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (_) => const MenuTabBar()));
              },
              color: const Color.fromRGBO(51, 51, 51, 1),
              textColor: Colors.white,
              minWidth: 300,
              height: 45,
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1, // Ketebalan garis
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "or",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1, // Ketebalan garis
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                //Login With Google
              },
              color: const Color.fromRGBO(255, 255, 255, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: const BorderSide(
                    color: Color.fromRGBO(224, 224, 224, 1), width: 1.0),
              ),
              minWidth: 300,
              height: 45,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo_google.png',
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Login with Google",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(130, 130, 130, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(189, 189, 189, 1)),
              ),
            TextButton(
            onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (_) => const RegisterScreen()));
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: const Text(
          "Sign in",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(79, 79, 79, 1),
          ),
          ),
          ),
          ],
        ),
      ),
    );
  }
}
