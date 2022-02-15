import 'package:flutter/material.dart';
import 'package:teste_de_dominio/app/constants/constants.dart';

class CustomStars extends StatefulWidget {
  final int stars;
  final double rating;
  final double review;

  const CustomStars(
      {Key? key,
      required this.stars,
      required this.rating,
      required this.review})
      : super(key: key);

  @override
  State<CustomStars> createState() => _CustomStarsState();
}

class _CustomStarsState extends State<CustomStars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: starsColor,
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: starsColor,
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: starsColor,
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: starsColor,
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: starsColor,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          "8.2",
          style: TextStyle(
            color: starsColor,
            fontSize: 13,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "( 1.022 reviews )",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
