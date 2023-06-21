import 'package:flutter/material.dart';

import '../otp/otp_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
      colors: [
        Color(0xFFF2921D),
        Color(0xFFF2EA7E),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
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
                'Create your account',
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
              const CustomTextField(hintText: 'Name'),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: 'Phone number or email address'),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: 'Date of birth'),
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'By signing up you agree to the ',
                          style: TextStyle(
                              height: 1.3,
                              fontFamily: 'SF-Pro',
                              fontSize: 15,
                              color: Color(0xff8296F5)),
                        ),
                        TextSpan(
                          text: 'Terms of services ',
                          style: TextStyle(
                            height: 1.3,
                            fontFamily: 'SF-Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            foreground: Paint()
                              ..shader = gradient.createShader(
                                const Rect.fromLTWH(150.0, 0.0, 150.0, 0.0),
                              ),
                          ),
                        ),
                        const TextSpan(
                          text: 'and ',
                          style: TextStyle(
                              height: 1.3,
                              fontFamily: 'SF-Pro',
                              fontSize: 15,
                              color: Color(0xff8296F5)),
                        ),
                        TextSpan(
                          text: 'and privacy policy, ',
                          style: TextStyle(
                            height: 1.3,
                            fontFamily: 'SF-Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            foreground: Paint()
                              ..shader = gradient.createShader(
                                const Rect.fromLTWH(150.0, 0.0, 150.0, 0.0),
                              ),
                          ),
                        ),
                        const TextSpan(
                          text:
                              'including Cookie Use. Others will be able to find you by email or phone number when provided. ',
                          style: TextStyle(
                              height: 1.3,
                              fontFamily: 'SF-Pro',
                              fontSize: 15,
                              color: Color(0xff8296F5)),
                        ),
                        TextSpan(
                          text: 'Privacy Options ',
                          style: TextStyle(
                            height: 1.3,
                            fontFamily: 'SF-Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            foreground: Paint()
                              ..shader = gradient.createShader(
                                const Rect.fromLTWH(150.0, 0.0, 150.0, 0.0),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomButton(
                  buttonText: 'Sign up',
                  height: 39,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()),
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
