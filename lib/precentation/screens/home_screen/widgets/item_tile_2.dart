import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget itemTile2({
  required int index,
  required BuildContext context,
  required int selectedItemCount,
  required String itemName,
  required String itemPrice,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
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
              ),
            ],
          ),
          Text(
            context.watch<ItemCountingProvider>().itemCounts[index].toString(),
            style: context.watch<ItemCountingProvider>().itemCounts[index] == 0
                ? TextStyles.boldAcsent.copyWith(fontSize: 15)
                : TextStyles.boldActive.copyWith(fontSize: 15),
          ),
          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: AppColors.primaryColor,
                        padding: const EdgeInsets.all(16.0), // Padding inside the container
                        child: SingleChildScrollView( // Ensure scrollability
                          child: GridView.builder(
                            shrinkWrap: true, // Ensure GridView is constrained in height
                            physics: const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                            itemCount: 105,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              childAspectRatio: 1.0,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            itemBuilder: (context, gridIndex) {
                              return GestureDetector(
                                onTap: () {
                                  context.read<ItemCountingProvider>().changeItemCount(
                                      value: gridIndex, index: index);
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  color: context.watch<ItemCountingProvider>().itemCounts[index] == gridIndex
                                      ? AppColors.activeColor
                                      : AppColors.secondaryColor,
                                  child: Text(
                                    gridIndex.toString(),
                                    style: TextStyle(
                                      color: context.watch<ItemCountingProvider>().itemCounts[index] == gridIndex
                                          ? AppColors.primaryColor
                                          : AppColors.acsentColor,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
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
          ),
        ],
      ),
    ),
  );
}
