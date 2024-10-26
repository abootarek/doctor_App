import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class TextCreateAcount extends StatelessWidget {
  const TextCreateAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Create Account', style: TextStyles.font32BblueBold),
          Text(
            "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
            style: TextStyles.font16gray,
          ),
        ],
      ),
    );
  }
}
