import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCountingProvider extends ChangeNotifier{
  List<int> itemCounts = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  List<int> totalsList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  double paneerTotal = 0.0;
  double cheeseTotal = 0.0;
  int grandTotalPrice = 0;
  TextEditingController givenMoneyController = TextEditingController();
  TextEditingController paneerGramEnterController = TextEditingController();
  TextEditingController cheeseGramEnterController = TextEditingController();
  int balanceAmount = 0;

  void changeItemCount({required int value,required int index}){
    grandTotalPrice = 0;
    itemCounts[index] = value;
    if(itemCounts[0] != 0){
      totalsList[0] = itemCounts[0] * 24;
    }else{
      itemCounts[0] = 0;
      totalsList[0] = 0;
    }
    
    if(itemCounts[1] != 0){
      totalsList[1] = itemCounts[1] * 26;
    }else{
      itemCounts[1] = 0;
      totalsList[1] = 0;
    }

    if(itemCounts[2] != 0){
      totalsList[2] = itemCounts[2] * 32;
    }else{
      itemCounts[2] = 0;
      totalsList[2] = 0;
    }

    if(itemCounts[3] != 0){
      totalsList[3] = itemCounts[3] * 65;
    }else{
      itemCounts[3] = 0;
      totalsList[3] = 0;
    }

    if(itemCounts[4] != 0){
      totalsList[4] = itemCounts[4] * 26;
    }else{
      itemCounts[4] = 0;
      totalsList[4] = 0;
    }

    if(itemCounts[5] != 0){
      totalsList[5] = itemCounts[5] * 38;
    }else{
      itemCounts[5] = 0;
      totalsList[5] = 0;
    }

    if(itemCounts[6] != 0){
      totalsList[6] = itemCounts[6] * 550;
    }else{
      itemCounts[6] = 0;
      totalsList[6] = 0;
    }

    if(itemCounts[7] != 0){
      totalsList[7] = itemCounts[7] * 275;
    }else{
      itemCounts[7] = 0;
      totalsList[7] = 0;
    }

    if(itemCounts[8] != 0){
      totalsList[8] = itemCounts[8] * 125;
    }else{
      itemCounts[8] = 0;
      totalsList[8] = 0;
    }

    if(itemCounts[9] != 0){
      totalsList[9] = itemCounts[9] * 9;
    }else{
      itemCounts[9] = 0;
      totalsList[9] = 0;
    }

    if(itemCounts[10] != 0){
      totalsList[10] = itemCounts[10] * 55;
    }else{
      itemCounts[10] = 0;
      totalsList[10] = 0;
    }

    if(itemCounts[11] != 0){
      totalsList[11] = itemCounts[11] * 50;
    }else{
      itemCounts[11] = 0;
      totalsList[11] = 0;
    }

    if(itemCounts[12] != 0){
      totalsList[12] = itemCounts[12] * 30;
    }else{
      itemCounts[12] = 0;
      totalsList[12] = 0;
    }

    if(itemCounts[13] != 0){
      totalsList[13] = itemCounts[13] * 40;
    }else{
      itemCounts[13] = 0;
      totalsList[13] = 0;
    }

    if(itemCounts[14] != 0){
      totalsList[14] = itemCounts[14] * 580;
    }else{
      itemCounts[14] = 0;
      totalsList[14] = 0;
    }

    if(itemCounts[15] != 0){
      totalsList[15] = itemCounts[15] * 300;
    }else{
      itemCounts[15] = 0;
      totalsList[15] = 0;
    }

    if(itemCounts[16] != 0){
      totalsList[16] = itemCounts[16] * 170;
    }else{
      itemCounts[16] = 0;
      totalsList[16] = 0;
    }

    if(itemCounts[17] != 0){
      totalsList[17] = itemCounts[17] * 70;
    }else{
      // itemCounts[17] = 0;
      // totalsList[17] = 0;
    }

    totalsList.forEach((value) {
      grandTotalPrice += value;
    },);

    if(paneerTotal != 0){
      grandTotalPrice = grandTotalPrice + paneerTotal.round();
    }
    if(cheeseTotal != 0){
      grandTotalPrice = grandTotalPrice + cheeseTotal.round();
    }
    notifyListeners();
  }

  void calculatePannerandCheese({required String itemName}){
      if(itemName == 'Cheese'){
        grandTotalPrice = grandTotalPrice - cheeseTotal.round();
        int cheeseGram = int.parse(cheeseGramEnterController.text.trim());
        cheeseTotal = cheeseGram * 0.55;
        grandTotalPrice += cheeseTotal.round();
        notifyListeners();
      }
      if(itemName == 'Paneer'){
        grandTotalPrice = grandTotalPrice - paneerTotal.round();
        int paneerGram = int.parse(paneerGramEnterController.text.trim());
        paneerTotal = paneerGram * 0.5;
        grandTotalPrice += paneerTotal.round();
        notifyListeners();
      }
    }
  

  void resetValues(){
    itemCounts = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    totalsList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    paneerTotal = 0;
    cheeseTotal = 0;
    grandTotalPrice = 0;
    balanceAmount = 0;
    givenMoneyController.clear();
    notifyListeners();
  }

  void checkBalance(){
    balanceAmount = 0;
    int givenAmount = int.tryParse(givenMoneyController.text.trim()) ?? 0;
    balanceAmount = givenAmount - grandTotalPrice;
    notifyListeners();
  }
}