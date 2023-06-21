import 'package:flutter/material.dart';
import 'account_created.dart';

class AnimatedArrow extends StatefulWidget {
  const AnimatedArrow({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedArrowState createState() => _AnimatedArrowState();
}

class _AnimatedArrowState extends State<AnimatedArrow>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: -10, end: 10).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, 0),
          child: child,
        );
      },
      child: const Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}

class ProfilePictureScreen extends StatefulWidget {
  const ProfilePictureScreen({Key? key}) : super(key: key);

  @override
  State<ProfilePictureScreen> createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<ProfilePictureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: SingleChildScrollView(
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
                'Set a profile picture',
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
              const Text(
                "Have a cool photo? Let's upload.",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SF-Pro',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff8296F5),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              const Stack(
                children: [
                  CircleAvatar(
                    radius: 100,
                    child: Image(image: AssetImage('assets/profile.png')),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 1,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff8296F5),
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle the action when "Skip for now" is tapped
                        },
                        child: const AnimatedArrow(),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          // Handle the action when "Skip for now" is tapped
                        },
                        child: const Text(
                          "Skip for now",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SF-Pro',
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8296F5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AccountCreatedScreen(),
            ),
          );
        },
        backgroundColor: const Color(0xff8296F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Icon(
          Icons.arrow_forward,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
