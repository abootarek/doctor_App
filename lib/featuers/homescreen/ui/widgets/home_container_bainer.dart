import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/colors.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeContainerBiner extends StatelessWidget {
  const HomeContainerBiner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 180.h,
            padding: const EdgeInsets.all(16).h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24).r,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/BanierHomeScreen.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18whitemedium,
                ),
                virticalspace(16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(120, 46),
                    elevation: 0,
                    backgroundColor: ColorsApp.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48).r,
                    ),
                  ),
                  child: Text('Find Nearby', style: TextStyles.font12mainblue),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            child: Image.asset(
              'assets/images/image_Doctor.png',
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
