import 'package:flutter/material.dart';

class ListGenerators{
  static List<Widget> makeTextOneToFifty(){
    List<Widget> sentList =[];
    for(int i = 0; i <= 50; i++){
      Widget hold = Text('$i');
      sentList.add(hold);
    }
    return sentList;
  } 
}