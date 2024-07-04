import 'package:addly/data/constant_data.dart';
import 'package:addly/precentation/screens/home_screen/widgets/item_tile_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemBlockTitle({required int index, required BuildContext context, required String itemName, required String itemPrice}) {
  int selectedItemCount = 0;
  if(itemName == ConstantData.productName[0]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[1]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[2]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[3]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[4]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[5]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[6]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[7]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[8]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[9]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[10]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[11]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[12]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[13]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[14]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[15]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[16]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[17]){
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[18]){
    return itemTile(type: 1, index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  if(itemName == ConstantData.productName[19]){
    return itemTile(type: 1, index: index, context: context,selectedItemCount: selectedItemCount,  itemName: itemName, itemPrice: itemPrice);
  }
  else{
    return itemTile(index: index, context: context,selectedItemCount: selectedItemCount,  itemName: 'else Item', itemPrice: itemPrice);
  }
  
}
