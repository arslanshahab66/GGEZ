import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final bool showCommentSection;

  const CustomContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.imagePath,
    this.showCommentSection = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xff0B102C),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.transparent,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x408296F5),
            offset: Offset(0, 20),
            blurRadius: 50,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            fit: BoxFit.fill,
            image: AssetImage(imagePath),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                const Text(
                  "rahim.nadeem",
                  style: TextStyle(
                    fontFamily: 'SF-Pro',
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                const Image(
                  height: 25,
                  width: 25,
                  image: AssetImage('assets/Heart.png'),
                ),
                const SizedBox(width: 10),
                const Image(
                  height: 25,
                  width: 25,
                  image: AssetImage('assets/Send.png'),
                ),
              ],
            ),
          ),
          showCommentSection
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'My new setup, Share your thoughts',
                    style: TextStyle(
                      fontFamily: 'SF-Pro',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              : Container(),
          const SizedBox(height: 20),
          if (showCommentSection)
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xff8296F5).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1AFFFFFF), // #FFFFFF with 10% opacity
                      offset: Offset(-12, 12), // X: -12, Y: 12
                      blurRadius: 12,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        height: 30,
                        image: AssetImage('assets/prof_image.png'),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Leave a comment...',
                        style: TextStyle(
                          fontFamily: 'SF-Pro',
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
