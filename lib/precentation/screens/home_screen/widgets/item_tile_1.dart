import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget itemTile1(
    {required int index,
    required BuildContext context,
    required int selectedItemCount,
    required String itemName,
    required String itemPrice}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25),
    child: Container(
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                itemName,
                style: TextStyles.boldAcsent.copyWith(fontSize: 20),
              ),
              Text(
                '₹ $itemPrice Per Gram',
                style: TextStyles.normalAcsent,
              )
            ],
          ),
          itemName == 'Paneer'
              ? Text(
                  '₹ ${context.watch<ItemCountingProvider>().paneerTotal}',
                  style: TextStyles.boldAcsent.copyWith(fontSize: 15),
                )
              : Text(
                  '₹ ${context.watch<ItemCountingProvider>().cheeseTotal.round()}',
                  style: TextStyles.boldAcsent.copyWith(fontSize: 15),
                ),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: AppColors.primaryColor,
                        content: TextField(
                          controller: itemName == "Paneer"
                              ? context
                                  .read<ItemCountingProvider>()
                                  .paneerGramEnterController
                              : context
                                  .read<ItemCountingProvider>()
                                  .cheeseGramEnterController,
                          cursorColor: AppColors.secondaryColor,
                          decoration: const InputDecoration(
                              suffixText: 'g',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.secondaryColor)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.secondaryColor))),
                          keyboardType: TextInputType.number,
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                context
                                    .read<ItemCountingProvider>()
                                    .calculatePannerandCheese(
                                        itemName: itemName);
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Enter',
                                style: TextStyles.boldAcsent,
                              ))
                        ],
                      );
                    });
              },
              child: const Text(
                'Item Gram',
                style: TextStyles.normalAcsent,
              ))
        ],
      ),
    ),
  );
}
