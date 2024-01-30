import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interneepk/features/home/models/job.dart';
import 'package:interneepk/features/home/viewmodels/home_view_model.dart';
import 'package:interneepk/utils/drawer.dart';
import 'package:interneepk/utils/helpers/helper_functions.dart';

import '../../../common/components/exception_widget.dart';
import '../../../data/api/responce/responce_status.dart';
import 'components/job_item_widget.dart';

class HomeView extends StatelessWidget {
  final homeVM = Get.put(HomeViewModel());
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    homeVM.getJobs();
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internship Listings"),
        actions: [
          IconButton(onPressed: (){homeVM.logout();}, icon: const Icon(Icons.exit_to_app))
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: AppDrawer.getDrawer(context),
      body: Obx(() {
        switch (homeVM.rxReqStatus.value) {
          case ResponseStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ResponseStatus.error:
            return ExceptionWidget(onPress: () {
              homeVM.getJobs();
            });
          case ResponseStatus.timeout:
            return ExceptionWidget(onPress: () {
              homeVM.getJobs();
            });
          case ResponseStatus.completed:
            return ListView.builder(
                itemCount: homeVM.jobsList.length,
                itemBuilder: (context, index) {
                  return JobItemWidget(job: homeVM.jobsList[index],);
                });
        }
      }));
  }
}


