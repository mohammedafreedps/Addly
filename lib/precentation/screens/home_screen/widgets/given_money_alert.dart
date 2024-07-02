import 'package:addly/precentation/utils/app_styles.dart';
import 'package:addly/provider/item_counting_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future givenMoney({required BuildContext context}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: TextField(
            controller:
                context.read<ItemCountingProvider>().givenMoneyController,
            cursorColor: AppColors.secondaryColor,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.secondaryColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.secondaryColor))),
            keyboardType: TextInputType.number,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  if (context
                      .read<ItemCountingProvider>()
                      .givenMoneyController
                      .text
                      .isNotEmpty) {
                    context.read<ItemCountingProvider>().checkBalance();
                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'Check',
                  style: TextStyles.boldAcsent,
                ))
          ],
        );
      });
}
