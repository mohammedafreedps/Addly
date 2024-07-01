import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget detailSection({required BuildContext context}) {
  return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(
              color: context.read<ItemCountingProvider>().grandTotalPrice == 0 ? AppColors.acsentColor : AppColors.activeColor,
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 0)
            )
          ],
          color:  AppColors.secondaryColor,borderRadius: BorderRadius.circular(5)),
    width: double.infinity,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  3, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Total Amount: ${
              context.watch<ItemCountingProvider>().grandTotalPrice.toString()}',
              style: TextStyles.boldAcsent.copyWith(fontSize: 15),
            ),
            Container(width: 2,height: double.infinity,color: AppColors.primaryColor,),
            Text('Balance Amount: ${
              context.watch<ItemCountingProvider>().balanceAmount.toString()}',
              style: TextStyles.boldAcsent.copyWith(fontSize: 15),
            ),
          ],
        ),
      ),
    ),
  ));
}
