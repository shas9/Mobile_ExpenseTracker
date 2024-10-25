import 'package:expense_tracker/common/styles/colors.dart';
import 'package:expense_tracker/common/widgets/secondary_button.dart';
import 'package:expense_tracker/features/login/widgets/social_button.dart';
import 'package:flutter/material.dart';

class SocialLoginView extends StatefulWidget {
  const SocialLoginView({super.key});

  @override
  State<SocialLoginView> createState() => _SocialLoginViewState();
}

class _SocialLoginViewState extends State<SocialLoginView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray80,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/app_logo.png",
                    width: media.width * 0.5, fit: BoxFit.contain),
                const Spacer(),
                const SizedBox(height: 20),
                SocialButton(
                  buttonType: SocialButtonType.apple,
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                SocialButton(
                  buttonType: SocialButtonType.google,
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                SocialButton(
                  buttonType: SocialButtonType.facebook,
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                Text(
                  "or",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
                const SizedBox(height: 25),
                SecondaryButton(
                  title: "Sign up with E-mail",
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                Text(
                  "By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.gray50, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
    );
  }
}