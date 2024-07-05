import 'package:addly/data/constant_data.dart';
import 'package:addly/precentation/screens/home_screen/widgets/given_money_alert.dart';
import 'package:addly/precentation/screens/home_screen/widgets/item_block_tile.dart';
import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/precentation/utils/scroll_controllers.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget itemListingSection({required BuildContext context}) {
  return Expanded(
      flex: 9,
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  givenMoney(context: context);
                }, icon: const Icon(Icons.money,color: AppColors.secondaryColor,)),
                Text('Items',style: TextStyles.boldSecondary.copyWith(fontSize: 30),),
                IconButton(onPressed: (){
                  context.read<ItemCountingProvider>().resetValues();
                  ScrollControllers.homeScreenListController.animateTo(0, duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
                }, icon: const Icon(Icons.restart_alt,color: AppColors.secondaryColor,))
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                controller: ScrollControllers.homeScreenListController,
                itemCount: ConstantData.productName.length,
                itemBuilder: (context, index) {
                  return itemBlockTitle(
                      index: index,
                      context: context,
                      itemName: ConstantData.productName[index],
                      itemPrice: ConstantData.productPrice[index]);
                },
              ),
            )
          ],
        ),
      ));
}
