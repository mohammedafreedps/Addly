import 'package:flutter/cupertino.dart';

class ItemCountingProvider extends ChangeNotifier{
  List<int> itemCounts = [0,0,0,0,0,0,0,0,0,0,0,0,0];
  List<int> totalsList = [0,0,0,0,0,0,0,0,0,0,0,0,0];
  int grandTotalPrice = 0;

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

    totalsList.forEach((value) {
      grandTotalPrice += value;
    },);
    notifyListeners();
  }

  void resetValues(){
    itemCounts = [0,0,0,0,0,0,0,0,0,0,0,0,0];
    totalsList = [0,0,0,0,0,0,0,0,0,0,0,0,0];
    grandTotalPrice = 0;
    notifyListeners();
  }
}