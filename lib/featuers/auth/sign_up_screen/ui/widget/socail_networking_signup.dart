import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:flutter/material.dart';

class SocialNetworkingSignUp extends StatelessWidget {
  const SocialNetworkingSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset(
            'assets/images/Login_google.png',
          ),
        ),
        horizontalSpace(32),
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/Login facebook.png'),
        ),
        horizontalSpace(32),
        CircleAvatar(
          backgroundColor: ColorsApp.transparent,
          child: Image.asset('assets/images/Login IOS.png'),
        ),
      ],
    );
  }
}
