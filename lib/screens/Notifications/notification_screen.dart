import 'package:flutter/material.dart';
import 'package:googgame_ez/widgets/reuseable_list_tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0B102C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'New',
                    style: TextStyle(
                      color: Color(0xff8296F5),
                      fontFamily: 'SF-Pro',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            CustomListTile(
                imagePath: 'assets/cody.png',
                title1: 'Cody Fisher ',
                title2: 'has liked your photo.'),
            CustomListTile(
                imagePath: 'assets/Ellipse 21.png',
                title1: 'Jane Cooper ',
                title2: 'has tagged you in a post.'),
            CustomListTile(
                imagePath: 'assets/Ellipse 22.png',
                title1: 'The Localhost gaming Zone ',
                title2: 'has updated their location.'),
            CustomListTile(
                imagePath: 'assets/Ellipse 23.png',
                title1: 'Lockdown Gaming ',
                title2: 'has added new packages to their menu.'),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Earlier',
                    style: TextStyle(
                      color: Color(0xff8296F5),
                      fontFamily: 'SF-Pro',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            CustomListTile(
                imagePath: 'assets/Ellipse 24.png',
                title1: 'Arslan Ayubi ',
                title2: 'has commented on your post.'),
          ],
        ),
      ),
    );
  }
}
