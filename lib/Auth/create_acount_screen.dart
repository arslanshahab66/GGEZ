import 'package:flutter/material.dart';
import 'package:googgame_ez/Auth/signup.dart';

class CreateAccountScreen extends StatefulWidget {
  final Animation<double> animation;

  const CreateAccountScreen({
    Key? key,
    required this.animation,
  }) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    final tween = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero);
    _animation = tween.animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
      backgroundColor: const Color(0xff0B102C),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                SafeArea(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: FractionallySizedBox(
                      widthFactor: 0.5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: AnimatedBuilder(
                          animation: _animation,
                          builder: (context, child) {
                            return Hero(
                              tag: 'logo',
                              child: SlideTransition(
                                position: _animation,
                                child: Image.asset(
                                  'assets/logo.png',
                                  width: 40,
                                  height: 36,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                ),
                const Text(
                  'Explore your\nFavourite Gaming\nspots right now ',
                  style: TextStyle(
                    color: Color(0xff8296F5),
                    fontSize: 32,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.w600,
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
                  child: Container(
                    height: 51,
                    width: 309,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff8296F5),
                    ),
                    child: const Center(
                      child: Text(
                        'Create account',
                        style: TextStyle(
                          fontFamily: 'SF-Pro',
                          color: Color(0xff0B102C),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Have an account already? ',
                            style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 14,
                              color: Color(0xff8296F5),
                            ),
                          ),
                          TextSpan(
                            text: 'Log in',
                            style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 14,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
