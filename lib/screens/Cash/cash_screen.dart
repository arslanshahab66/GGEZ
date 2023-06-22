import 'package:flutter/material.dart';
import 'package:googgame_ez/Providers/selected_container_provider.dart';
import 'package:googgame_ez/screens/TeamRegisteration/payment_success.dart';
import 'package:provider/provider.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/tournament_container.dart';

class CashScreen extends StatefulWidget {
  const CashScreen({Key? key}) : super(key: key);

  @override
  State<CashScreen> createState() => _CashScreenState();
}

class _CashScreenState extends State<CashScreen> {
  @override
  Widget build(BuildContext context) {
    // Provider.of<SelectedContainerProvider>(context, listen: false);
    const gradient = LinearGradient(
      colors: [
        Color(0xFFF2921D),
        Color(0xFFF2EA7E),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
    return ChangeNotifierProvider(
      create: (_) => SelectedContainerProvider(),
      child: Consumer<SelectedContainerProvider>(
        builder: (context, selectedContainerProvider, _) {
          return Scaffold(
            backgroundColor: const Color(0xff0B102C),
            body: SizedBox(
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
                              image: const AssetImage(
                                  'assets/chevron-left-lg.png'),
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
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Your payment will be ',
                            style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff8296F5),
                            ),
                          ),
                          TextSpan(
                            text: 'verified ',
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
                          const TextSpan(
                            text: 'shortly and email ',
                            style: TextStyle(
                              fontFamily: 'SF-Pro',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff8296F5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'will be sent to you. ',
                    style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff8296F5),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Select your payment method ',
                          style: TextStyle(
                            fontFamily: 'SF-Pro',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8296F5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          TournamentContainer(
                            height: 80,
                            width: 80,
                            color: Provider.of<SelectedContainerProvider>(
                                            context,
                                            listen: false)
                                        .selectedContainerIndex ==
                                    0
                                ? Color(0xff8296F5)
                                : Color(0xff292929),
                            imagePath: 'assets/cash1.png',
                            text: 'Bank Transfer',
                            onTap: () {
                              Provider.of<SelectedContainerProvider>(context,
                                      listen: false)
                                  .selectedContainerIndex = 0;
                            },
                          ),
                          SizedBox(width: 16),
                          TournamentContainer(
                            height: 80,
                            width: 80,
                            color: Provider.of<SelectedContainerProvider>(
                                            context,
                                            listen: false)
                                        .selectedContainerIndex ==
                                    1
                                ? Color(0xff8296F5)
                                : Color(0xff292929),
                            imagePath: 'assets/cash2.png',
                            text: 'Cash App',
                            onTap: () {
                              Provider.of<SelectedContainerProvider>(context,
                                      listen: false)
                                  .selectedContainerIndex = 1;
                            },
                          ),
                          SizedBox(width: 16),
                          TournamentContainer(
                            height: 80,
                            width: 80,
                            color: Provider.of<SelectedContainerProvider>(
                                            context,
                                            listen: false)
                                        .selectedContainerIndex ==
                                    2
                                ? Color(0xff8296F5)
                                : Color(0xff292929),
                            imagePath: 'assets/cash3.png',
                            text: 'PayPal',
                            onTap: () {
                              Provider.of<SelectedContainerProvider>(context,
                                      listen: false)
                                  .selectedContainerIndex = 2;
                            },
                          ),
                          SizedBox(width: 16),
                          TournamentContainer(
                            height: 80,
                            width: 80,
                            color: Provider.of<SelectedContainerProvider>(
                                            context,
                                            listen: false)
                                        .selectedContainerIndex ==
                                    3
                                ? Color(0xff8296F5)
                                : Color(0xff292929),
                            imagePath: 'assets/cash4.png',
                            text: 'Easypaisa',
                            onTap: () {
                              Provider.of<SelectedContainerProvider>(context,
                                      listen: false)
                                  .selectedContainerIndex = 3;
                            },
                          ),
                          SizedBox(width: 16),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextField(hintText: 'Captain Name'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hintText: 'Attach Screenshot of Payment',
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomButton(
                      buttonText: 'Register',
                      height: 39,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PaymentSuccessfulScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
