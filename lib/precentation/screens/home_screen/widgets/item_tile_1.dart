import 'package:addly/precentation/screens/home_screen/widgets/entering_item_grams.dart';
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
                  '₹ ${context.watch<ItemCountingProvider>().paneerTotalDisplay}',
                  style: TextStyles.boldAcsent.copyWith(fontSize: 15),
                )
              : Text(
                  '₹ ${context.watch<ItemCountingProvider>().cheeseTotalDisplay.round()}',
                  style: TextStyles.boldAcsent.copyWith(fontSize: 15),
                ),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return enteringItemGrams(context: context,itemName: itemName);
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
