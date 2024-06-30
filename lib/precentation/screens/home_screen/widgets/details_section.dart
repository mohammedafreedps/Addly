import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget detailSection({required BuildContext context}) {
  return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: AppColors.acsentColor,
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 0)
            )
          ],
          color:  AppColors.secondaryColor,borderRadius: BorderRadius.circular(5)),
    width: double.infinity,
    child: Center(
      child: Text('Total Amount: ${
        context.watch<ItemCountingProvider>().grandTotalPrice.toString()}',
        style: TextStyles.boldAcsent.copyWith(fontSize: 20),
      ),
    ),
  ));
}
