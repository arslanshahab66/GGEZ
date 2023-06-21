import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String imagePath;
  final String title1;
  final String title2;

  const CustomListTile({super.key, 
    required this.imagePath,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Image(fit: BoxFit.cover, image: AssetImage(imagePath)),
      ),
      title: Row(
        children: [
          Text(
            title1,
            maxLines: 4,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'SF-Pro',
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      subtitle: Text(
        title2,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'SF-Pro',
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: const Image(
        height: 4,
        width: 16,
        image: AssetImage('assets/Vector.png'),
      ),
    );
  }
}
