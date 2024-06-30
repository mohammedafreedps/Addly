import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 0, 92, 120);
  static const Color secondaryColor = Color.fromARGB(255, 243, 247, 236);
  static const Color acsentColor = Color.fromARGB(255, 232, 142, 103);
}

class TextStyles {
  static const TextStyle normalPrimary = TextStyle(color: AppColors.primaryColor);
  static const TextStyle secondaryPrimary = TextStyle(color: AppColors.secondaryColor);
  static const TextStyle normalAcsent = TextStyle(color: AppColors.acsentColor);
  static const TextStyle boldPrimary = TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold);
  static const TextStyle boldSecondary = TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.bold);
  static const TextStyle boldAcsent = TextStyle(color: AppColors.acsentColor,fontWeight: FontWeight.bold);
}