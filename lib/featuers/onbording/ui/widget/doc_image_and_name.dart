import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class DocImageAndName extends StatelessWidget {
  const DocImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/doc_background.png'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.0),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.3, 1.0],
            ),
          ),
          alignment: Alignment.center,
          child: Image.asset('assets/images/image_Doctor.png'),
        ),
        Positioned(
          bottom: 25,
          left: 10,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor Appointment App',
            style: TextStyles.font32BblueBold.copyWith(
              height: 1.3,
            ),
          ),
        )
      ],
    );
  }
}
