import 'package:interneepk/data/api/firebase/firebase_auth_handler.dart';

class SplashViewModel{
  void checkLogin(){
    FirebaseAuthHandler().checkLogin();
  }
}