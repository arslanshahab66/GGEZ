import 'package:flutter/material.dart';

import 'package:googgame_ez/Auth/create_acount_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.repeat(reverse: true);
    navigateToNextScreen();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 4));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => CreateAccountScreen(
            animation: _animation), 
      ),
    );
  }

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
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff0B102C),
            child: Image.asset(
              'assets/Shape.png',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Opacity(
                  opacity: _animation.value,
                  child: child,
                );
              },
              child: Hero(
                tag: 'logo', // Provide a unique tag for the Hero animation
                child: Image.asset(
                  'assets/logo.png',
                  width: 268, // Adjust the width of the logo as needed
                  height: 230, // Adjust the height of the logo as needed
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'from',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  'ARSLAN',
                  style: TextStyle(
                    letterSpacing: 2.5,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    foreground: Paint()
                      ..shader = gradient.createShader(
                        const Rect.fromLTWH(150.0, 0.0, 150.0, 0.0),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}