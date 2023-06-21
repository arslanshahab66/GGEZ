import 'package:flutter/material.dart';
import 'package:googgame_ez/Models/list_tile_mode.dart';
import 'package:googgame_ez/screens/Discover/discover_detail_screen.dart';
import 'package:googgame_ez/widgets/reuseable_container.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  Map<String, dynamic>? selectedListTile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: Column(
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
                            fontFamily: 'Poppins',
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
            height: 30,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  ReuseableContainer(
                    height: 35,
                    width: 100,
                    color: Color(0xff0084F4),
                    text: 'Games',
                  ),
                  SizedBox(width: 16),
                  ReuseableContainer(
                    height: 35,
                    width: 100,
                    color: Color(0xff6979F8),
                    text: 'Competitive',
                  ),
                  SizedBox(width: 16),
                  ReuseableContainer(
                    height: 35,
                    width: 100,
                    color: Color(0xffFF647C),
                    text: 'New Release',
                  ),
                  SizedBox(width: 16),
                  ReuseableContainer(
                    height: 35,
                    width: 100,
                    color: Color(0xffFFA500),
                    text: 'Pro Teams',
                  ),
                  SizedBox(width: 16),
                  ReuseableContainer(
                    height: 35,
                    width: 100,
                    color: Color(0xff00C48C),
                    text: 'Results',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's News",
                  style: TextStyle(
                    color: Color(0xff8296F5),
                    fontSize: 15,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    color: Color(0xff8296F5),
                    fontSize: 10,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listData.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> listItem = listData[index];

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedListTile = listItem;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DiscoverDetailScreen(
                                image: listItem['leading'],
                                title: listItem['title'])));
                  },
                  child: ListTile(
                    leading: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(
                          // fit: BoxFit.fill,
                          image: AssetImage(listItem['leading'])),
                    ),
                    title: Text(
                      listItem['title'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      listItem['subtitle'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
