import 'package:flutter/material.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/prof_image.png'),
                      ),
                      const SizedBox(width: 15),
                      const Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/Plus.png'),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Hero(
                        tag: 'logo',
                        child: Image.asset(
                          'assets/logo.png',
                          width: 40,
                          height: 36,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/Search.png'),
                      ),
                      const SizedBox(width: 15),
                      const Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/Chat.png'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'You are not following anyone',
                    style: TextStyle(
                      fontFamily: 'SF-Pro',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
