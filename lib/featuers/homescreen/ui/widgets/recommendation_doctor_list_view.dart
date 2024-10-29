import 'package:flutter/material.dart';

import '../../../../core/helper/sixbox.dart';
import '../../../../core/theming/style.dart';

class RecommendationDoctorListView extends StatelessWidget {
  const RecommendationDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Image.network(
                      'https://image.similarpng.com/very-thumbnail/2022/01/African-medical-doctor-man-isolated-on-transparent-background-PNG.png',
                      height: 140,
                      width: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  horixontalspace(16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name : Dr. John Doe kj hih i i b',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyles.font18Black700Wight,
                        ),
                        Text(
                          'General | RSUD Gatot Subroto',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyles.font16gray,
                        ),
                        Text(
                          '⭐ 4.8 (4,279 reviews)',
                          maxLines: 1,
                          style: TextStyles.font16gray,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
