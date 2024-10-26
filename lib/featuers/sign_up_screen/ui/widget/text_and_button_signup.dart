import 'package:docapp_pro/core/helper/extintion.dart';
import 'package:docapp_pro/core/routing/routs.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class TextAndButtonSignUp extends StatelessWidget {
  const TextAndButtonSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have  account yet ?",
          style: TextStyles.font13black,
        ),
      ],
    );
  }
}
