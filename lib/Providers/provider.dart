// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:googgame_ez/Auth/create_password_screen.dart';

// class OtpScreen extends StatelessWidget {
//   const OtpScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const gradient = LinearGradient(
//       colors: [
//         Color(0xFFF2921D),
//         Color(0xFFF2EA7E),
//       ],
//       begin: Alignment.centerLeft,
//       end: Alignment.centerRight,
//     );
//     final isFieldsFilled = Provider.of<OtpProvider>(context).isFieldsFilled;

//     return ChangeNotifierProvider(
//       create: (_) => OtpProvider(),
//       child: Scaffold(
//         backgroundColor: const Color(0xff0B102C),
//         body: Consumer<OtpProvider>(
//           builder: (context, otpProvider, _) => Column(
//             children: [
//               SafeArea(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: MediaQuery.of(context).size.width * 0.05,
//                     vertical: MediaQuery.of(context).size.height * 0.01,
//                   ),
//                   child: Row(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Image(
//                           height: MediaQuery.of(context).size.height * 0.03,
//                           width: MediaQuery.of(context).size.height * 0.03,
//                           image: const AssetImage('assets/chevron-left-lg.png'),
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width * 0.35,
//                       ),
//                       const Image(
//                         height: 36,
//                         width: 40,
//                         image: AssetImage('assets/logo.png'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               const Text(
//                 "What's the code?",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xff8296F5),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Text.rich(
//                 TextSpan(
//                   children: [
//                     const TextSpan(
//                       text: 'we sent an email at ',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 14,
//                         fontWeight: FontWeight.normal,
//                         color: Color(0xff8296F5),
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'arslanshahab66@gmail.com',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 14,
//                         fontWeight: FontWeight.normal,
//                         foreground: Paint()
//                           ..shader = gradient.createShader(
//                             const Rect.fromLTWH(150.0, 0.0, 150.0, 0.0),
//                           ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: List.generate(
//                     6,
//                     (index) => _buildTextField(context, index),
//                   ),
//                 ),
//               ),
//               const Spacer(),
//               Padding(
//                 padding: const EdgeInsets.only(left: 30.0, bottom: 30),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: GestureDetector(
//                     onTap: () {
//                       // Handle the action when "Didn't receive email?" is tapped
//                     },
//                     child: const Text(
//                       "Didn't receive email?",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.normal,
//                         color: Color(0xff8296F5),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: isFieldsFilled
//               ? () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const CreatePassword()));
//                 }
//               : null,
//           backgroundColor: isFieldsFilled
//               ? const Color(0xff8296F5)
//               : const Color(0xff8296F5).withOpacity(0.4),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//           child: const Icon(
//             Icons.arrow_forward,
//             size: 30,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(BuildContext context, int index) {
//     final otpProvider = Provider.of<OtpProvider>(context);
//     final isFilled = otpProvider.isTextFieldFilled(index);
//     final borderColor = isFilled ? const Color(0xff8296F5) : Colors.grey;
//     const cursorColor = Color(0xff8296F5);
//     final autoFocus = index == 0 && !isFilled;

//     return SizedBox(
//       width: 50,
//       child: TextField(
//         controller: otpProvider.controllers[index],
//         focusNode: otpProvider.focusNodes[index],
//         maxLength: 2,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         autofocus: autoFocus,
//         onChanged: (value) {
//           if (value.isNotEmpty) {
//             if (index < 5) {
//               otpProvider.setCurrentIndex(index + 1);
//               FocusScope.of(context).requestFocus(otpProvider.focusNodes[index + 1]);
//             } else {
//               FocusScope.of(context).unfocus();
//             }
//           } else {
//             if (index > 0) {
//               otpProvider.setCurrentIndex(index - 1);
//               Future.delayed(Duration.zero, () {
//                 final previousIndex = index - 1;
//                 FocusScope.of(context).requestFocus(otpProvider.focusNodes[previousIndex]);
//                 final previousTextLength = otpProvider.controllers[previousIndex].text.length;
//                 otpProvider.controllers[previousIndex].selection = TextSelection.collapsed(
//                   offset: previousTextLength,
//                 );
//               });
//             }
//           }
//         },
//         decoration: InputDecoration(
//           counterText: '',
//           enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: borderColor),
//           ),
//           focusedBorder: UnderlineInputBorder(
//             borderSide: BorderSide(color: borderColor),
//           ),
//         ),
//         style: const TextStyle(
//           fontSize: 25,
//           color: Colors.white,
//           fontFamily: 'Poppins',
//           fontWeight: FontWeight.normal,
//         ),
//         cursorWidth: 2.0,
//         cursorHeight: 30.0,
//         cursorColor: cursorColor,
//         cursorRadius: const Radius.circular(1),
//       ),
//     );
//   }
// }

// class OtpProvider with ChangeNotifier {
//   final List<TextEditingController> controllers = List.generate(6, (_) => TextEditingController());
//   final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());
//   int currentIndex = 0;

//   bool get isFieldsFilled {
//     return controllers.every((controller) => controller.text.isNotEmpty);
//   }

//   bool isTextFieldFilled(int index) {
//     return controllers[index].text.isNotEmpty;
//   }

//   void setCurrentIndex(int index) {
//     currentIndex = index;
//     notifyListeners();
//   }

//   @override
//   void dispose() {
//     controllers.forEach((controller) => controller.dispose());
//     focusNodes.forEach((node) => node.dispose());
//     super.dispose();
//   }
// }
