import 'package:flutter/material.dart';

import '../../viewmodels/home_view_model.dart';
import 'job_item_widget.dart';

class MobileHomeWidget extends StatelessWidget {
  const MobileHomeWidget({
    super.key,
    required this.homeVM,
  });

  final HomeViewModel homeVM;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: homeVM.jobsList.length,
        itemBuilder: (context, index) {
          return JobItemWidget(job: homeVM.jobsList[index],);
        });
  }
}