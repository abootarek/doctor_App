import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/doclogo.svg'),
        horizontalSpace(8),
        Image.asset('assets/images/Docdoc_name.png'),
      ],
    );
  }
}
