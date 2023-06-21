import 'package:flutter/material.dart';

import '../../widgets/reuseable_list_tile.dart';

class EsportsNotificationScreen extends StatefulWidget {
  const EsportsNotificationScreen({super.key});

  @override
  State<EsportsNotificationScreen> createState() =>
      _EsportsNotificationScreenState();
}

class _EsportsNotificationScreenState extends State<EsportsNotificationScreen> {
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
                imagePath: 'assets/esports1.png',
                title1: 'Cody Fisher ',
                title2: 'has liked your photo.'),
            CustomListTile(
                imagePath: 'assets/esports2.png',
                title1: 'Jane Cooper ',
                title2: 'has tagged you in a post.'),
            CustomListTile(
                imagePath: 'assets/esports3.png',
                title1: 'The Localhost gaming Zone ',
                title2: 'has updated their location.'),
          ],
        ),
      ),
    );
  }
}
