import 'package:flutter/material.dart';
class AppSizes{
  static late double wRatio;
  static late double hRatio;

  static init(BuildContext context) async {
    var size=MediaQuery.sizeOf(context);
    wRatio=size.width/428;
    hRatio=size.height/926;
  }

}