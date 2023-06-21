import 'package:flutter/material.dart';

class DiscoverDetailScreen extends StatefulWidget {
  final String image;
  final String title;
  const DiscoverDetailScreen(
      {super.key, required this.image, required this.title});

  @override
  State<DiscoverDetailScreen> createState() => _DiscoverDetailScreenState();
}

class _DiscoverDetailScreenState extends State<DiscoverDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.red,
              child: Image(fit: BoxFit.cover, image: AssetImage(widget.image)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Gambit Esports became the champion of VCT 2021: Stage 3 Masters Berlin. In the grand final of the championship, the Russian team beat Team Envy with a score of 3: 0, thus earning \$ 225,000.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "The final meeting began on the Bind map, which became the choice of the Russian team. However, the first half was dominated by the North Americans, who showed solid defense and won the half with a score of 7: 5. But after the change of sides, Gambit already managed to seize the advantage, at some point and even got a chance to close the card. Nevertheless, Team Envy managed to reduce the case to overtime, as a result of which the victory was still in favor of the Russian team - 15:13.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "On Haven, once a permaban of Gambit, the Russian team managed to contain the onslaught of the North Americans, who won just 8 rounds for the strong side. Of course, this was not enough in the match against Gambit, which played an impeccable half in the attack, winning the opponent's pick with a score of 13:11.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "On the Split map, the intrigue continued until the start of the second half, when Gambit abruptly switched on the fifth gear and began to gain round after round. At some point, it began to seem that Team Envy resigned to their fate, doing nothing in the attack. Such a gift was skillfully used by the Russian team, which confidently closed their own selection with a score of 13: 9, and at the same time won the championship.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Following this victory, Team Gambit directly qualified for VALORANT Champions 2021, making room for Fnatic, which is now progressing to the championship on points scored. At the same time, Team Envy will also be represented at the tournament in Berlin, occupying the second place in the North American table.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Results of VCT 2021: Stage 3 Masters Berlin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "1st place: Gambit Esports - \$ 225,000 + a ticket to VALORANT Champions 2021.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "2nd place: Team Envy - \$ 125,000 + 375 points.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "2nd place: Team Envy - \$ 125,000 + 375 points.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "3rd place: Team Envy - \$ 125,000 + 375 points.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "4th place: Team Envy - \$ 125,000 + 375 points.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "5th place: Team Envy - \$ 125,000 + 375 points.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "6th place: Team Envy - \$ 125,000 + 375 points.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
