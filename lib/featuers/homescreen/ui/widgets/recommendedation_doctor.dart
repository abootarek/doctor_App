import 'package:docapp_pro/core/helper/sixbox.dart';
import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Recommendation Doctor',
              style: TextStyles.font18Black700Wight,
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyles.font12mainblue,
              ),
            ),
          ],
        ),
        virticalspace(16),
      ],
    );
  }
}
