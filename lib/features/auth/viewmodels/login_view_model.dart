import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interneepk/common/routes/routes_names.dart';
import 'package:interneepk/data/api/firebase/firebase_auth_handler.dart';

class LoginViewModel extends GetxController{
  LoginViewModel._();
  LoginViewModel.get();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailFocusedNode = FocusNode().obs;
  final passwordFocusedNode = FocusNode().obs;
  RxBool loading = false.obs;

  void login(){
    String email = emailController.value.text;
    String password = passwordController.value.text;
    FirebaseAuthHandler().loginFirebase(email, password)
        .then((value){
          print("Login Success");
          Get.offAndToNamed(RoutesNames.homeView);
    }).onError((error, stackTrace){
      print(error.toString());
    });
  }
}