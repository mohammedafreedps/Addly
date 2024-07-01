import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:addly/utils/list_generators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget itemTile(
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
          borderRadius: BorderRadiusDirectional.circular(10)),
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
                '₹ $itemPrice',
                style: TextStyles.normalAcsent,
              )
            ],
          ),
          context.read<ItemCountingProvider>().itemCounts[index] == 0
              ? Text(
                  context
                      .watch<ItemCountingProvider>()
                      .itemCounts[index]
                      .toString(),
                  style: TextStyles.boldAcsent.copyWith(fontSize: 15),
                )
              : Text(
                  context
                      .watch<ItemCountingProvider>()
                      .itemCounts[index]
                      .toString(),
                  style: TextStyles.boldActive.copyWith(fontSize: 15),
                ),
          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CupertinoPicker(
                        backgroundColor: AppColors.primaryColor,
                        itemExtent: 32,
                        useMagnifier: true,
                        diameterRatio: 1,
                        scrollController: FixedExtentScrollController(
                            initialItem: context
                                .watch<ItemCountingProvider>()
                                .itemCounts[index]),
                        children: ListGenerators.makeTextOneToFifty(),
                        onSelectedItemChanged: (value) {
                          context
                              .read<ItemCountingProvider>()
                              .changeItemCount(value: value, index: index);
                        },
                      ),
                    ),
                  ),
                ),
              );
            },
            child: const Text(
              'Item Count',
              style: TextStyles.normalAcsent,
            ),
          )
        ],
      ),
    ),
  );
}
