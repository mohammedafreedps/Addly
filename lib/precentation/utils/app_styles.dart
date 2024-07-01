import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 238, 237, 235);
  static const Color secondaryColor = Color.fromARGB(255, 147, 145, 133);
  static const Color acsentColor = Color.fromARGB(255, 47, 54, 69);
  static const Color activeColor = Color.fromARGB(255, 230, 185, 166);
}

class TextStyles {
  static const TextStyle normalPrimary = TextStyle(color: AppColors.primaryColor);
  static const TextStyle secondaryPrimary = TextStyle(color: AppColors.secondaryColor);
  static const TextStyle normalAcsent = TextStyle(color: AppColors.acsentColor);
  static const TextStyle boldPrimary = TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold);
  static const TextStyle boldSecondary = TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.bold);
  static const TextStyle boldAcsent = TextStyle(color: AppColors.acsentColor,fontWeight: FontWeight.bold);
  static const TextStyle boldActive = TextStyle(color: AppColors.activeColor,fontWeight: FontWeight.bold);
}