import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:interneepk/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:interneepk/data/api/firebase/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform
   );

  await GetStorage.init();
  runApp(const App());
}

