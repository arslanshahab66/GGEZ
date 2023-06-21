import 'package:flutter/material.dart';
import 'package:googgame_ez/Auth/signup.dart';
import 'package:googgame_ez/widgets/custom_button.dart';

import 'Login.dart';

class AccountCreatedScreen extends StatefulWidget {
  const AccountCreatedScreen({Key? key}) : super(key: key);

  @override
  State<AccountCreatedScreen> createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, 0.2),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.repeat(reverse: true);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: Column(
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                widthFactor: 0.5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/logo.png',
                      width: 40,
                      height: 36,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
          ),
          const Text(
            'Your account has\nbeen created\nsuccessfully. ',
            style: TextStyle(
              color: Color(0xff8296F5),
              fontSize: 32,
              fontFamily: 'SF-Pro',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
            child: CustomButton(
              buttonText: "Let's Go",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              height: 51,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SlideTransition(
            position: _slideAnimation,
            child: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
