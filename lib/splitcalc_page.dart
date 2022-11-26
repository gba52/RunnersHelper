import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class DistanceOption {
  String displayName;
  int distance;

  DistanceOption(this.displayName, this.distance);
}

class SplitCalculatorPage extends StatefulWidget {
  const SplitCalculatorPage({super.key});

  @override
  State<SplitCalculatorPage> createState() => _SplitCalculatorState();
}

class _SplitCalculatorState extends State<SplitCalculatorPage> {

  final items = [
    DistanceOption("1500 m", 1500),
    DistanceOption("5 km", 5000),
    DistanceOption("10 km", 10000),
    DistanceOption("Half Marathon", 21100),
    DistanceOption("Marathon", 42200),
  ];

  DistanceOption dropDownValue = DistanceOption("1500 m", 1500);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(

            // Initial Value
            value: dropDownValue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((DistanceOption item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item.displayName),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (DistanceOption? newValue) {
              setState(() {
                dropDownValue = newValue!;
              });
            },
          ),
        ],
      ),
    );
  }

}