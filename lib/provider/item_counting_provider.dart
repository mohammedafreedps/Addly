import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCountingProvider extends ChangeNotifier {
  List<int> itemCounts = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> totalsList = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  double paneerTotalDisplay = 0.0;
  double cheeseTotalDisplay = 0.0;
  String gramAddedAndTotalCheeseDisplay = '-';
  String gramAddedAndTotalPaneerDisplay = '-';
  List<String> cheeseGramToAddAndTotals = [];
  List<String> paneerGramToAddAndTotals = [];
  int grandTotalPrice = 0;
  TextEditingController givenMoneyController = TextEditingController();
  TextEditingController paneerGramEnterController = TextEditingController();
  double convertedTextToDouble = 0.0;
  TextEditingController cheeseGramEnterController = TextEditingController();
  int balanceAmount = 0;
  int cheeseAddWithItemcount = 0;
  int totalCheeseGram = 0;
  double totalCheesePrice = 0;
  int totalPaneerGram = 0;
  double totalPaneerPrice = 0;

  void changeItemCount({required int value, required int index}) {
    itemCounts[index] = value;
    updateTotals();
  }

  void updateTotals() {
    grandTotalPrice = 0;

    totalsList[0] = itemCounts[0] * 24;
    totalsList[1] = itemCounts[1] * 26;
    totalsList[2] = itemCounts[2] * 32;
    totalsList[3] = itemCounts[3] * 65;
    totalsList[4] = itemCounts[4] * 26;
    totalsList[5] = itemCounts[5] * 38;
    totalsList[6] = itemCounts[6] * 550;
    totalsList[7] = itemCounts[7] * 275;
    totalsList[8] = itemCounts[8] * 125;
    totalsList[9] = itemCounts[9] * 9;
    totalsList[10] = itemCounts[10] * 55;
    totalsList[11] = itemCounts[11] * 50;
    totalsList[12] = itemCounts[12] * 30;
    totalsList[13] = itemCounts[13] * 40;
    totalsList[14] = itemCounts[14] * 580;
    totalsList[15] = itemCounts[15] * 300;
    totalsList[16] = itemCounts[16] * 170;
    totalsList[17] = itemCounts[17] * 70;

    for (var value in totalsList) {
      grandTotalPrice += value;
    }

    grandTotalPrice += cheeseAddWithItemcount;
    grandTotalPrice += totalCheesePrice.round();
    grandTotalPrice += totalPaneerPrice.round();

    notifyListeners();
  }

  void calculatePannerandCheese(
      {required String itemName, bool toAdd = false}) {
    if (itemName == 'Cheese') {
      if (cheeseGramEnterController.text.isNotEmpty) {
        double hold = 0;
        cheeseTotalDisplay = 0;
        totalCheeseGram = 0;
        grandTotalPrice = grandTotalPrice - totalCheesePrice.round();
        gramAddedAndTotalCheeseDisplay = '';
        cheeseGramToAddAndTotals.add(cheeseGramEnterController.text.trim());
        for (int i = 0; i < cheeseGramToAddAndTotals.length; i++) {
          gramAddedAndTotalCheeseDisplay += '${cheeseGramToAddAndTotals[i]}g ,';
        }
        for (int i = 0; i < cheeseGramToAddAndTotals.length; i++) {
          hold = double.parse(cheeseGramToAddAndTotals[i]);
          totalCheeseGram = totalCheeseGram + hold.round();
        }
        totalCheesePrice = totalCheeseGram * 0.55;
        cheeseTotalDisplay = totalCheesePrice;
        grandTotalPrice += totalCheesePrice.round();
        cheeseGramEnterController.clear();
        notifyListeners();
      }
    }
    if (itemName == 'Paneer') {
      if (paneerGramEnterController.text.isNotEmpty) {
        double hold = 0;
        paneerTotalDisplay = 0;
        totalPaneerGram = 0;
        grandTotalPrice = grandTotalPrice - totalPaneerPrice.round();
        gramAddedAndTotalPaneerDisplay = '';
        paneerGramToAddAndTotals.add(paneerGramEnterController.text.trim());
        for (int i = 0; i < paneerGramToAddAndTotals.length; i++) {
          gramAddedAndTotalPaneerDisplay += '${paneerGramToAddAndTotals[i]}g ,';
        }
        for (int i = 0; i < paneerGramToAddAndTotals.length; i++) {
          hold = double.parse(paneerGramToAddAndTotals[i]);
          totalPaneerGram = totalPaneerGram + hold.round();
        }
        totalPaneerPrice = totalPaneerGram * 0.5;
        paneerTotalDisplay = totalPaneerPrice;
        grandTotalPrice += totalPaneerPrice.round();
        paneerGramEnterController.clear();
        notifyListeners();
      }
    }
  }

  void clearButtonPressed({required String itemName}) {
    if (itemName == 'Cheese') {
      clearCheeseData();
    }
    if(itemName == 'Paneer') {
      clearPaneerData();
    }
  }

  void clearCheeseData() {
    grandTotalPrice = grandTotalPrice - totalCheesePrice.round();
    cheeseTotalDisplay = 0;
    totalCheeseGram = 0;
    totalCheesePrice = 0;
    gramAddedAndTotalCheeseDisplay = '-';
    cheeseGramToAddAndTotals = [];
    notifyListeners();
  }

  void clearPaneerData() {
    grandTotalPrice = grandTotalPrice - totalPaneerPrice.round();
    paneerTotalDisplay = 0;
    totalPaneerGram = 0;
    totalPaneerPrice = 0;
    gramAddedAndTotalPaneerDisplay = '-';
    paneerGramToAddAndTotals = [];
    notifyListeners();
  }

  void resetValues() {
    itemCounts = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    totalsList = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    paneerTotalDisplay = 0;
    cheeseTotalDisplay = 0;
    totalCheeseGram = 0;
    totalCheesePrice = 0;
    grandTotalPrice = 0;
    balanceAmount = 0;
    cheeseAddWithItemcount = 0;
    gramAddedAndTotalCheeseDisplay = '-';
    cheeseGramToAddAndTotals = [];
    givenMoneyController.clear();
    notifyListeners();
  }

  void checkBalance() {
    int givenAmount = int.tryParse(givenMoneyController.text.trim()) ?? 0;
    balanceAmount = givenAmount - grandTotalPrice;
    notifyListeners();
  }
}
