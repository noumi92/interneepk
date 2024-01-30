import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interneepk/common/routes/routes_names.dart';
import 'package:interneepk/data/api/firebase/firebase_auth_handler.dart';
import 'package:interneepk/data/api/firebase/firebase_data_handler.dart';
import 'package:interneepk/features/home/models/job.dart';
import '../../../data/api/responce/responce_status.dart';

class HomeViewModel extends GetxController{
  final rxReqStatus = ResponseStatus.loading.obs;
  RxString error = "".obs;
  List<Job> jobsList = <Job>[].obs;

  void setRxReqStatus(value) => rxReqStatus.value = value;
  void setError(String value) => error.value = value;
  void getJobs() {
    FirebaseDataHAndler().getCources()
        .then((value) {
      setRxReqStatus(ResponseStatus.completed);
      jobsList = value;
      print("jobs loaded");
    }).onError((error, stackTrace) {
      setRxReqStatus(ResponseStatus.error);
      setError(error.toString());
    });
  }


  void logout(){
    FirebaseAuthHandler().logout()
        .then((value){
      print("Logout Success");
      Get.offAndToNamed(RoutesNames.welcomeView);
    }).onError((error, stackTrace){
      print(error.toString());
    });
  }

}