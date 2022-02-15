import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:teste_de_dominio/app/constants/constants.dart';

import 'customtext.dart';

class CustomRecommended extends StatelessWidget {
  const CustomRecommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: Container(
        height: 130,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 90,
              width: 240,
              child: Card(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: const ImageNetwork(
                      image:
                          "https://mlabs-s3-blog.s3.amazonaws.com/wp-content/uploads/2020/06/14173126/marketing-digital-para-salao-de-beleza-header.jpg",
                      imageCache: CachedNetworkImageProvider(
                        "https://mlabs-s3-blog.s3.amazonaws.com/wp-content/uploads/2020/06/14173126/marketing-digital-para-salao-de-beleza-header.jpg",
                      ),
                      height: 90,
                      width: 240,
                      fitWeb: BoxFitWeb.cover,
                      fitAndroidIos: BoxFit.cover,
                      onLoading: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                      onError: Icon(Icons.error),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: prefer_const_constructors
                      CustomText(Color(0xff3d4571), 12, "Hexagone Salon", true),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: starsColor,
                          ),
                          CustomText(starsColor, 9, '1.2', false)
                        ],
                      )

                      ///Estrelas
                    ],
                  ),
                  Container(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 12,
                      ),
                      CustomText(Colors.grey, 10,
                          "Jalan Di Pandjaitan No 8, Purselfire", true)
                    ],
                  )
                ],
              ),
            ),

            ///Local
          ],
        ),
      ),
    );
  }
}
