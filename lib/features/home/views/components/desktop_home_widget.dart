import 'package:flutter/material.dart';

import '../../viewmodels/home_view_model.dart';
import 'job_item_widget.dart';

class DesktopHomeWidget extends StatelessWidget {
  const DesktopHomeWidget({
    super.key,
    required this.homeVM,
  });

  final HomeViewModel homeVM;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3
        ),
        itemCount: homeVM.jobsList.length,
        itemBuilder: (BuildContext context, int index){
          return JobItemWidget(job: homeVM.jobsList[index]);
        }
    );
  }
}