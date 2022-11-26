import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:runners_helper/TimeInputField.dart';
import 'TimeInputField.dart';

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

  var items = [
    "1500 m",
    "5 km",
    "10 km",
    "Half Marathon",
    "Marathon",
  ];

  String dropDownValue = "1500 m";

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
            items: items.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue!;
              });
            },
          ),
          const TimeInputField(),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Desired Time',
            ),
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );
  }

}