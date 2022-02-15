import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownCustom extends StatefulWidget {
  @override
  State<DropDownCustom> createState() => _DropDownCustomState();
}

class _DropDownCustomState extends State<DropDownCustom> {
  final items = [
    "Corte",
    "Lavagem",
    "Barba",
    "Completo",
  ];

  String value = 'Corte';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 560,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: DropdownButton(
        isExpanded: true,
        value: value,
        items: items.map(buildMenuItem).toList(),
        onChanged: (String? newValue) =>
            setState(() {
              value = newValue!;
            }
            ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
      );
}
