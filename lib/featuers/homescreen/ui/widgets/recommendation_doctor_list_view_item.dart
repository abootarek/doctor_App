// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../../core/helper/sixbox.dart';
import '../../../../core/theming/style.dart';
import '../../data/models/specializitions_response_model.dart';

class RecommendationDoctorListViewItem extends StatelessWidget {
  const RecommendationDoctorListViewItem({
    super.key,
    this.doctorsModel,
  });
  final Doctors? doctorsModel;

  @override
  Widget build(BuildContext context) {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'fffff',
                // doctorsModel?.name ?? 'Doctor Name',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyles.font18Black700Wight,
              ),
              Text(
                doctorsModel?.gender ?? 'Gender',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyles.font16gray,
              ),
              Text(
                '${doctorsModel?.degree ?? 'Degree'},|| ${doctorsModel?.phone ?? 'Phone'} ',
                maxLines: 1,
                style: TextStyles.font16gray,
              ),
              Text(
                doctorsModel?.email ?? 'Email',
                maxLines: 1,
                style: TextStyles.font16gray,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
