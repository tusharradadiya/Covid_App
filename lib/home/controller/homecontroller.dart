import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController{
  TextEditingController txtname = TextEditingController();
  String name = "";
  void asign(){
    name = txtname.text;
    update();
  }
}