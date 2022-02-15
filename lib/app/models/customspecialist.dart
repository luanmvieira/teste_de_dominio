import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:teste_de_dominio/app/constants/constants.dart';

import 'customtext.dart';

class CustomSpecialist extends StatelessWidget {
  final String url;
  final String name;
  final double estrelas;

  const CustomSpecialist(
      {Key? key, required this.url, required this.name, required this.estrelas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 0,
      ),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Card(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: ImageNetwork(
                            image: url,
                            imageCache: CachedNetworkImageProvider(url),
                            height: 200,
                            width: 150,
                            fitWeb: BoxFitWeb.cover,
                            fitAndroidIos: BoxFit.cover,
                            onLoading: const CircularProgressIndicator(
                              color: Colors.blue,
                            ),
                            onError: const Icon(Icons.error),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(255, 152, 0, 0.2),
                      ),
                      height: 15,
                      width: 30,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: starsColor,
                          ),
                          CustomText(starsColor, 9, estrelas.toString(), false)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomText(const Color(0xff3d4571), 12, name.toString(), true),
          ],
        ),
      ),
    );
  }
}
