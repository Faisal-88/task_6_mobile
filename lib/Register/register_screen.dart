// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_6/Login/login_screen.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_tes/menu_top_tabbar.dart';
// import 'package:flutter_tes/response/res_login.dart';
// import 'package:flutter_tes/api/api.dart';
// import 'package:flutter_tes/session/session_manager.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}


class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  bool isPrivacyPolicyChecked = false;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 100, // Sesuaikan tinggi gambar sesuai kebutuhan
              ),
              const SizedBox(height: 16),
              buildTextField(
                controller: fullname,
                hintText: 'Full Name',
              ),
              const SizedBox(height: 16),
              buildTextField(
                controller: email,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              buildPasswordTextField(
                controller: password,
                hintText: 'Password',
              ),
              const SizedBox(height: 16),
              buildPasswordTextField(
                controller: confirmpassword,
                hintText: 'Confirm Password',
              ),
              const SizedBox(height: 16),
              buildPrivacyPolicyCheckbox(),
              const SizedBox(height: 25),
              buildMaterialButton(
                onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
                label: 'Sign Up',
                color: const Color.fromRGBO(51, 51, 51, 1),
                textColor: const Color.fromRGBO(242, 242, 242, 1),
              ),
              const SizedBox(height: 40),
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
              const SizedBox(height: 30),
              buildMaterialButtonWithIcon(
                onPressed: () {
                  // Handle Google login logic
                },
                label: 'Login with Google',
                icon: Image.asset(
                  'assets/images/logo_google.png',
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text(
                "Already have an account?",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(189, 189, 189, 1)),
              ),
            TextButton(
            onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (_) => const LoginScreen()));
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: const Text(
          "Log in",
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

  Widget buildTextField({
    required TextEditingController controller,
    required String hintText,
    TextInputType? keyboardType,
    bool obscureText = false,
  }) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 300,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          ),
          fillColor: const Color.fromRGBO(242, 242, 242, 1),
          filled: true,
        ),
      ),
    );
  }

 Widget buildPrivacyPolicyCheckbox() {
  return Row(
    children: [
     Checkbox(
        value: isPrivacyPolicyChecked,
        onChanged: (value) {
          // Handle checkbox state
        },
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                 TextSpan(
                  text: 'I agree with the ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  text: 'Term and Condition',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    // onTap: () {
                    //   
                    // },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'and the Privace Policy.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  );
}

  Widget buildMaterialButton({
    required VoidCallback onPressed,
    required String label,
    Color color = const Color.fromRGBO(51, 51, 51, 1),
    Color textColor = const Color.fromRGBO(242, 242, 242, 1),
  }) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      color: color,
      textColor: textColor,
      minWidth: 300,
      height: 45,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}

Widget buildPasswordTextField({
    required TextEditingController controller,
    required String hintText,
  }) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 300,
      child: TextFormField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          ),
          fillColor: const Color.fromRGBO(242, 242, 242, 1),
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: () {
              // iconpassword visibility
            },
          ),
        ),
      ),
    );
  }

Widget buildMaterialButtonWithIcon({
    required VoidCallback onPressed,
    required String label,
    Widget? icon,
  }) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: const BorderSide(
          color: Color.fromRGBO(224, 224, 224, 1),
          width: 1.0,
        ),
      ),
      minWidth: 300,
      height: 45,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) icon,
          const SizedBox(width: 8),
          Text(
            label,
            style:const TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(130, 130, 130, 1),
            ),
          ),
        ],
      ),
    );
  }