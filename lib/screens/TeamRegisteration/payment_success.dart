import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State<PaymentSuccessfulScreen> createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
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
      body: Column(
        children: [
          Container(
            height: 80,
          ),
          const Center(
            child: Image(
                height: 272,
                width: 270,
                image: AssetImage('assets/payment.png')),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Congratulations',
            style: TextStyle(
                fontFamily: 'SF-Pro',
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff8296F5)),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: "You've ",
                        style: TextStyle(
                            height: 1.3,
                            fontFamily: 'SF-Pro',
                            fontSize: 15,
                            color: Color(0xff8296F5)),
                      ),
                      TextSpan(
                        text: 'successfully ',
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
                        text: 'registered for the ',
                        style: TextStyle(
                            height: 1.3,
                            fontFamily: 'SF-Pro',
                            fontSize: 15,
                            color: Color(0xff8296F5)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'tournament. Tournament organizer will get in\n touch with you shortly. Thankyou for using',
                  style: TextStyle(
                    color: Color(0xff8296F5),
                    height: 1.5,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'GGEZ ',
              style: TextStyle(
                height: 1.5,
                fontFamily: 'SF-Pro',
                fontSize: 15,
                fontWeight: FontWeight.normal,
                foreground: Paint()
                  ..shader = gradient.createShader(
                    const Rect.fromLTWH(150.0, 0.0, 150.0, 0.0),
                  ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomButton(
              buttonText: 'Continue',
              height: 39,
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const BottomNavBar()),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
