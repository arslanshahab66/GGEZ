import 'package:flutter/material.dart';
import 'package:googgame_ez/screens/Cash/cash_screen.dart';

import '../../Models/list_tile_mode.dart';
import '../../widgets/custom_textfield.dart';

class PlayerRegisterScreen extends StatefulWidget {
  const PlayerRegisterScreen({Key? key}) : super(key: key);

  @override
  State<PlayerRegisterScreen> createState() => _PlayerRegisterScreenState();
}

class _PlayerRegisterScreenState extends State<PlayerRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.height * 0.03,
                      image: const AssetImage('assets/chevron-left-lg.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Team Registration',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'SF-Pro',
                fontWeight: FontWeight.bold,
                color: Color(0xff8296F5),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: hintList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: 15),
                      CustomTextField(hintText: hintList[index]),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CashScreen(),
            ),
          );
        },
        backgroundColor: const Color(0xff8296F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: const Icon(
          Icons.arrow_forward,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
