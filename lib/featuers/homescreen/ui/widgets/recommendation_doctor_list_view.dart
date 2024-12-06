// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:docapp_pro/featuers/homescreen/data/models/specializitions_response_model.dart';
import 'recommendation_doctor_list_view_item.dart';

class RecommendationDoctorListView extends StatelessWidget {
  const RecommendationDoctorListView({
    super.key,
    this.doctorsList,
  });
  final List<Doctors?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorsList?.length,
          itemBuilder: (context, index) {
            return RecommendationDoctorListViewItem(
              doctorsModel: doctorsList?[index],
            );
          }),
    );
  }
}
