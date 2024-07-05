import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget enteringItemGrams({required BuildContext context,required String itemName}) {
  return AlertDialog(
    title: itemName == 'Paneer'
        ? Text(context
            .watch<ItemCountingProvider>()
            .gramAddedAndTotalPaneerDisplay)
        : Text(context
            .watch<ItemCountingProvider>()
            .gramAddedAndTotalCheeseDisplay),
    backgroundColor: AppColors.primaryColor,
    content: TextField(
      controller: itemName == "Paneer"
          ? context.read<ItemCountingProvider>().paneerGramEnterController
          : context.read<ItemCountingProvider>().cheeseGramEnterController,
      cursorColor: AppColors.secondaryColor,
      decoration: const InputDecoration(
          suffixText: 'g',
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryColor))),
      keyboardType: TextInputType.number,
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                context
                    .read<ItemCountingProvider>()
                    .calculatePannerandCheese(itemName: itemName, toAdd: true);
              },
              child: const Text(
                'Add',
                style: TextStyles.boldAcsent,
              )),
          TextButton(
              onPressed: () {
                context
                    .read<ItemCountingProvider>()
                    .clearButtonPressed(itemName: itemName);
                Navigator.pop(context);
              },
              child: const Text(
                'Clear',
                style: TextStyles.boldAcsent,
              )),
          TextButton(
              onPressed: () {
                context
                    .read<ItemCountingProvider>()
                    .calculatePannerandCheese(itemName: itemName, toAdd: true);
                Navigator.pop(context);
              },
              child: const Text(
                'Enter',
                style: TextStyles.boldAcsent,
              )),
        ],
      )
    ],
  );
}
