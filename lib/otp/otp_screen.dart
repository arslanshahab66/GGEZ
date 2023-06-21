import 'package:flutter/material.dart';
import 'package:googgame_ez/Auth/create_password_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  int currentIndex = 0;

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
      colors: [
        Color(0xFFF2921D),
        Color(0xFFF2EA7E),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
    final isFieldsFilled =
        _controllers.every((controller) => controller.text.isNotEmpty);

    return Scaffold(
      backgroundColor: const Color(0xff0B102C),
      body: Column(
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
            "What's the code?",
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'SF-Pro',
              fontWeight: FontWeight.bold,
              color: Color(0xff8296F5),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'we sent an email at ',
                  style: TextStyle(
                    fontFamily: 'SF-Pro',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff8296F5),
                  ),
                ),
                TextSpan(
                  text: 'arslanshahab66@gmail.com',
                  style: TextStyle(
                    fontFamily: 'SF-Pro',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    foreground: Paint()
                      ..shader = gradient.createShader(
                        const Rect.fromLTWH(150.0, 0.0, 150.0, 0.0),
                      ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => _buildTextField(index),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  // Handle the action when "Didn't receive email?" is tapped
                },
                child: const Text(
                  "Didn't receive email?",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.normal,
                    color: Color(0xff8296F5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: isFieldsFilled
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreatePassword()));
              }
            : null,
        backgroundColor: isFieldsFilled
            ? const Color(0xff8296F5)
            : const Color(0xff8296F5).withOpacity(0.4),
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

  Widget _buildTextField(int index) {
    final isFilled = _controllers[index].text.isNotEmpty;
    final borderColor = isFilled ? const Color(0xff8296F5) : Colors.grey;
    const cursorColor = Color(0xff8296F5);
    final autoFocus = index == 0 && !isFilled;

    return SizedBox(
      width: 50,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        maxLength: 2,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        autofocus: autoFocus,
        onChanged: (value) {
          if (value.isNotEmpty) {
            if (index < 5) {
              setState(() {
                currentIndex = index + 1;
              });
              FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
            } else {
              FocusScope.of(context).unfocus();
            }
          } else {
            if (index > 0) {
              setState(() {
                currentIndex = index - 1;
              });
              Future.delayed(Duration.zero, () {
                final previousIndex = index - 1;
                FocusScope.of(context).requestFocus(_focusNodes[previousIndex]);
                final previousTextLength =
                    _controllers[previousIndex].text.length;
                _controllers[previousIndex].selection = TextSelection.collapsed(
                  offset: previousTextLength,
                );
              });
            }
          }
        },
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: borderColor),
          ),
        ),
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontFamily: 'SF-Pro',
          fontWeight: FontWeight.normal,
        ),
        cursorWidth: 2.0,
        cursorHeight: 30.0,
        cursorColor: cursorColor,
        cursorRadius: const Radius.circular(1),
      ),
    );
  }
}
