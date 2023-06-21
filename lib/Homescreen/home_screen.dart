import 'package:flutter/material.dart';

import '../widgets/custom_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFollowingSelected = false;
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
                isFollowingSelected
                    ? Center(
                        child: SizedBox(
                          height: 600,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.16,
                              ),
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    "You're not following\nanyone :(",
                                    style: TextStyle(
                                      color: Color(0xff8296F5),
                                      fontFamily: 'SF-Pro',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 34,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          CustomContainer(
                            height: 380,
                            width: MediaQuery.of(context).size.width * 0.9,
                            imagePath: 'assets/Rectangle17.png',
                          ),
                          const SizedBox(height: 30),
                          CustomContainer(
                            height: 380,
                            width: MediaQuery.of(context).size.width * 0.9,
                            imagePath: 'assets/valorant.png',
                          ),
                        ],
                      ),
              ],
            ),
          ),
          Positioned(
            top: isFollowingSelected
                ? MediaQuery.of(context).size.height * 0.73
                : MediaQuery.of(context).size.height * 0.73,
            left: isFollowingSelected
                ? MediaQuery.of(context).size.width * 0.5 - 154
                : MediaQuery.of(context).size.width * 0.5 - 154,
            child: Container(
              height: 51,
              width: 320,
              decoration: BoxDecoration(
                color: const Color(0xff6372BA).withOpacity(0.7),
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1AFFFFFF), // #FFFFFF with 10% opacity
                    offset: Offset(-12, 12), // X: -12, Y: 12
                    blurRadius: 12,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFollowingSelected = false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: isFollowingSelected
                            ? Colors.transparent
                            : const Color(0xff0B102C),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Center(
                        child: Text(
                          'For You',
                          style: TextStyle(
                            color: isFollowingSelected
                                ? const Color(0xff0B102C)
                                : Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFollowingSelected = true;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: isFollowingSelected
                            ? const Color(0xff0B102C)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Center(
                        child: Text(
                          'Following',
                          style: TextStyle(
                            color: isFollowingSelected
                                ? Colors.white
                                : const Color(0xff0B102C),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
