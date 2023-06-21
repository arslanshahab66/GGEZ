import 'package:flutter/material.dart';
import 'package:googgame_ez/Auth/profile_picture.dart';

import '../widgets/custom_textfield.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                      const Image(
                        height: 36,
                        width: 40,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Create your password',
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
              const Text(
                'Your passoword is secure with us.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SF-Pro',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff8296F5),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextField(hintText: 'Password'),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(hintText: 'Confirm Password'),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ProfilePictureScreen()));
        },
        backgroundColor: const Color(0xff8296F5),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(30.0), // Adjust the radius as needed
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
