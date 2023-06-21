import 'package:flutter/material.dart';

import '../Bottomnavbar/bottom_navbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: SingleChildScrollView(
        // Wrap the column with SingleChildScrollView
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.height * 0.03,
                          image: const AssetImage('assets/chevron-left-lg.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                      const Image(
                        height: 36,
                        width: 40,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'SF-Pro',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8296F5),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextField(hintText: 'Phone number or email address'),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: 'Password'),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomButton(
                  buttonText: 'Login',
                  height: 39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavBar()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
