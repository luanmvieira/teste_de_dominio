import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_de_dominio/app/constants/constants.dart';


class Hours extends StatelessWidget {
  const Hours({Key? key, required this.hour1, required this.hour2, required this.hour3, required this.hour4}) : super(key: key);
  final String hour1;
  final String hour2;
  final String hour3;
  final String hour4;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 30,
            width: 70,
            color: starsColor,
            child: Center(child: Text(hour1,style: TextStyle(
              color: Colors.white
            ),))

          ),
        ),
        SizedBox(child: Text(hour2)),
        SizedBox(child: Text(hour3)),
        SizedBox(child: Text(hour4)),
      ],
    );
  }
}
