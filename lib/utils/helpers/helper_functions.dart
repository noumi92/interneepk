import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NHelpers{
  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double getScreenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
}