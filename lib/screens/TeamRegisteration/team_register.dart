import 'package:flutter/material.dart';
import 'package:googgame_ez/screens/TeamRegisteration/player_register.dart';
import '../../widgets/custom_textfield.dart';

class TeamRegisterScreen extends StatefulWidget {
  const TeamRegisterScreen({Key? key}) : super(key: key);

  @override
  State<TeamRegisterScreen> createState() => _TeamRegisterScreenState();
}

class _TeamRegisterScreenState extends State<TeamRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: SingleChildScrollView(
        // Wrap the column with SingleChildScrollView
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            children: [
              SafeArea(
                child: Padding(
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
              const CustomTextField(hintText: 'Team Name'),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: 'Captain Name'),
               const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: "Captain's ingame Username"),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: "Captain's Discord Username"),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: "Captain's Email"),
              const SizedBox(
                height: 15,
              ),
              const Spacer(),
             
            ],
          ),
        ),
      ),
         floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PlayerRegisterScreen(),
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
