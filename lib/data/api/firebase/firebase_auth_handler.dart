import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:interneepk/common/routes/routes_names.dart';

import '../exceptions/api_exceptions.dart';

class FirebaseAuthHandler extends GetxController{
  final _auth = FirebaseAuth.instance;
  _setInitialScreen(User? user) {
    if(user == null){
      Timer(const Duration(seconds: 6), (){
        Get.offAndToNamed(RoutesNames.welcomeView);
      });
    }else{
      Timer(const Duration(seconds: 6), (){
        Get.offAndToNamed(RoutesNames.homeView);
      });
    }
  }
  void checkLogin(){
    User? firebaseUser = _auth.currentUser;
    _setInitialScreen(firebaseUser);
  }

  Future<dynamic> loginFirebase(String email, String password) async{
    dynamic result;
    try {
      final userCred = await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .timeout(const Duration(seconds: 30));
      result = userCred;
    } on InternetException {
      throw InternetException('');
    } on TimeoutException {
      throw TimeoutException('');
    }
    return result;

  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}