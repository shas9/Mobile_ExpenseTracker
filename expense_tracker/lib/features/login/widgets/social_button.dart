import 'package:expense_tracker/common/styles/colors.dart';
import 'package:flutter/material.dart';

enum SocialButtonType { google, apple, facebook }

// Enum extension for cleaner access to properties based on button type
extension SocialButtonTypeExtension on SocialButtonType {
  String get title {
    switch (this) {
      case SocialButtonType.google:
        return 'Sign up with Google';
      case SocialButtonType.apple:
        return 'Sign up with Apple';
      case SocialButtonType.facebook:
        return 'Sign up with Facebook';
    }
  }

  String get imageAsset {
    switch (this) {
      case SocialButtonType.google:
        return 'assets/images/google_btn.png';
      case SocialButtonType.apple:
        return 'assets/images/apple_btn.png';
      case SocialButtonType.facebook:
        return 'assets/images/facebook_btn.png';
    }
  }

  Color get buttonColor {
    switch (this) {
      case SocialButtonType.google:
        return TColor.googleWhite;
      case SocialButtonType.apple:
        return TColor.appleBlack;
      case SocialButtonType.facebook:
        return TColor.facebookBlue;
    }
  }

  Color get primaryColor {
    switch (this) {
      case SocialButtonType.google:
        return TColor.gray80;
      default:
        return TColor.white;
    }
  }

  String get buttonIcon {
    switch (this) {
      case SocialButtonType.google:
        return 'assets/images/google.png';
      case SocialButtonType.apple:
        return 'assets/images/apple.png';
      case SocialButtonType.facebook:
        return 'assets/images/fb.png';
    }
  }
}

class SocialButton extends StatelessWidget {
  final SocialButtonType buttonType;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;

  const SocialButton({
    super.key,
    required this.buttonType,
    required this.onPressed,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(buttonType.imageAsset)
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: buttonType.buttonColor.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ],
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              buttonType.buttonIcon,
              width: 16,
              height: 16,
              color: buttonType.primaryColor,
            ),
            const SizedBox(width: 8),
            Text(
              buttonType.title,
              style: TextStyle(
                color: buttonType.primaryColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
