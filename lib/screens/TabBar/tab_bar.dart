import 'package:flutter/material.dart';
import 'package:googgame_ez/screens/Notifications/esports_notifications.dart';
import 'package:googgame_ez/screens/Notifications/notification_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}
class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: const <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image(
                      height: 30,
                      image: AssetImage('assets/prof_image.png'),
                    ),
                    Spacer(),
                    Text(
                      'Notifications',
                      style: TextStyle(
                        color: Color(0xff8296F5),
                        fontFamily: 'SF-Pro',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(), // Add Spacer widget to push the following widgets to the right side
                    Image(
                      height: 30,
                      image: AssetImage('assets/Setting.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
          backgroundColor: const Color(0xff0B102C),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TabBar(
                indicatorColor: Color(0xff8296F5),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.zero,
                tabs: [
                  Tab(
                      child: Text(
                    'All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  )),
                  Tab(
                      child: Text(
                    'eSports',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  )),
                ],
              ),
            ),
          ),
          // title: Text('Tabs Demo'),
        ),
        body: const TabBarView(
          children: [
            // Icon(Icons.flight, size: 350),

            NotificationScreen(),
            EsportsNotificationScreen(),
          ],
        ),
      ),
    );
  }
}
