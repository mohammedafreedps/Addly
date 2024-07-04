import 'package:addly/precentation/screens/home_screen/widgets/item_tile_1.dart';
import 'package:addly/precentation/screens/home_screen/widgets/item_tile_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemTile(
    {int? type = 0,
    required int index,
    required BuildContext context,
    required int selectedItemCount,
    required String itemName,
    required String itemPrice}) {
  if (type == 1) {
    return itemTile1(
        index: index,
        context: context,
        selectedItemCount: selectedItemCount,
        itemName: itemName,
        itemPrice: itemPrice);
  }
  return itemTile2(
      index: index,
      context: context,
      selectedItemCount: selectedItemCount,
      itemName: itemName,
      itemPrice: itemPrice);
}
