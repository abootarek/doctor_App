import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class RichTextComponant extends StatelessWidget {
  const RichTextComponant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13gray,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13black,
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font13gray,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font13black.copyWith(height: 1.7),
          ),
        ],
      ),
    );
  }
}
