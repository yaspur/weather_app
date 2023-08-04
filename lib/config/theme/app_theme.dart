import 'package:flutter/material.dart';

const List<Color> colorList = [

  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.yellow,
  Colors.lightBlueAccent,
  Colors.grey

];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, 'Selected color mmust be greather then 0'),
      assert(selectedColor < colorList.length, 
            'Selected color mmust be less or equal than ${colorList.length - 1}'
      );

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
    );
  }

}