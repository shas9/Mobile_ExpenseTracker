import 'package:expense_tracker/common/styles/colors.dart';
import 'package:expense_tracker/common/widgets/primary_button.dart';
import 'package:expense_tracker/common/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset("assets/images/welcome_screen.png",
            width: media.width, height: media.height, fit: BoxFit.cover),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/app_logo.png",
                    width: media.width * 0.5, fit: BoxFit.contain),
                const Spacer(),
                Text(
                  "Welcome to our Expense Tracker app",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 30,
                ),
                PrimaryButton(
                  title: "Get Started",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                SecondaryButton(
                  title: "I have an account",
                  onPressed: () {},
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
