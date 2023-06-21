import 'package:flutter/material.dart';
import 'package:googgame_ez/screens/TeamRegisteration/team_register.dart';
import 'package:googgame_ez/widgets/tournament_container.dart';

import '../../widgets/custom_container.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({Key? key}) : super(key: key);

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  Map<String, dynamic>? selectedListTile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                children: [
                  const Image(
                    height: 30,
                    width: 30,
                    image: AssetImage('assets/prof_image.png'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.73,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff8296F5).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1AFFFFFF),
                          offset: Offset(-12, 12),
                          blurRadius: 12,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            height: 20,
                            image: AssetImage('assets/Search.png'),
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Search',
                            style: TextStyle(
                              fontFamily: 'SF-Pro',
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Game Categories",
                    style: TextStyle(
                      color: Color(0xff8296F5),
                      fontSize: 15,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      color: Color(0xff8296F5),
                      fontSize: 10,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    TournamentContainer(
                      height: 80,
                      width: 80,
                      color: Colors.transparent,
                      imagePath: 'assets/tournament1.png',
                      text: 'Valorant',
                    ),
                    SizedBox(width: 16),
                    TournamentContainer(
                      height: 80,
                      width: 80,
                      color: Colors.transparent,
                      imagePath: 'assets/tournament2.png',
                      text: 'Rainbow siege',
                    ),
                    SizedBox(width: 16),
                    TournamentContainer(
                      height: 80,
                      width: 80,
                      color: Colors.transparent,
                      imagePath: 'assets/tournament3.png',
                      text: 'Dota 2',
                    ),
                    SizedBox(width: 16),
                    TournamentContainer(
                      height: 80,
                      width: 80,
                      color: Colors.transparent,
                      imagePath: 'assets/tournament4.png',
                      text: 'CSGO',
                    ),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured",
                    style: TextStyle(
                      color: Color(0xff8296F5),
                      fontSize: 15,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      color: Color(0xff8296F5),
                      fontSize: 10,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TeamRegisterScreen()));
                    },
                    child: const CustomContainer(
                      height: 170,
                      width: 360,
                      imagePath: 'assets/featured1.png',
                      showCommentSection: false,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const CustomContainer(
                    height: 170,
                    width: 360,
                    imagePath: 'assets/featured2.png',
                    showCommentSection: false,
                  ),
                  const SizedBox(height: 15),
                  const CustomContainer(
                    height: 170,
                    width: 360,
                    imagePath: 'assets/featured3.png',
                    showCommentSection: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
